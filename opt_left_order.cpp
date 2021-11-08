/**
 * n number of nodes in the new order
 */
std::tuple<std::vector<int>, double, std::vector<double>, bool> put_node_in_back(const std::vector<int> &input_order,
                                                                                 int n,
                                                                                 int index_of_el_to_insert,
                                                                                 const std::vector<double> &input_node_scores,
                                                                                 const double &input_order_score,
                                                                                 OrderScoring &scoring)
{
    // std::cout << "n=" << n << std::endl;
    //  Try to p std::vector<double> order_scores(first_n_elements + 1);
    std::vector<double> node_scores(input_node_scores);
    std::vector<int> order(input_order);
    int p = order.size();
    // double order_score(input_order_score);
    int node = order[index_of_el_to_insert];

    // int order_number = prev_order_number + node; // TODO: What is this? Seems strange..

    // Calculate score for node at index first_n_elements. The other nodes have the
    // same score sine those are still befor in the ordering.
    move_element(order, index_of_el_to_insert, n - 1); // put it in the back
    std::vector<int> order_ret(order);

    double new_node_score = scoring.score_pos(order, n - 1); // O(p)? This should also be quite time consuming..

    node_scores[node] = new_node_score;

    double order_score = input_order_score + node_scores[node];
    double max_score = order_score;
    bool optimal_at_back = true;

    // std::cout << p - n << ": " << order_score << ", ";
    for (int i = n - 1 - 1; i >= 0; --i) // put it in the back instead?
    {
        int node1 = order[i];
        int node2 = order[i + 1];
        const auto &[node1_scoretmp, node2_scoretmp] = scoring.swap_nodes(i, i + 1, order, node_scores); // This should update the order score directly maybe.
        // std::cout << node2_scoretmp << ", " << node1_scoretmp << std::endl;
        order_score = order_score - (node_scores[node1] + node_scores[node2]) + (node1_scoretmp + node2_scoretmp);
        node_scores[node1] = node1_scoretmp;
        node_scores[node2] = node2_scoretmp;

        // std::cout << i + 1 << ": " << order_score << ", ";
        if (definitelyGreaterThan(order_score, max_score, EPSILON))
        {
            // std::cout << "Better score at pos " << i + 1 << ", (" << order_score << ") instead of pos " << p - n << " (" << max_score <<"). Break." << std::endl;
            optimal_at_back = false;
            break; // Just break the loop if some better osition if found.
        }
    }
    // std::cout << std::endl;
    // PrintVector(order);
    // PrintVector(order_ret);

    std::vector<double> node_scores_ret(input_node_scores);
    node_scores_ret[node] = new_node_score;
    // PrintVector(order_scores);
    //  If not optimal at the front (p-n), nodes_scores is not correct
    return (std::make_tuple(order_ret, max_score, node_scores_ret, optimal_at_back));
}

void put_nodes_in_back(int n,
                       std::vector<std::vector<std::tuple<std::vector<int>, double, std::vector<double>>>> &opt_tuples,
                       OrderScoring &scoring)
{
    // Go through all orders with n-1 nodes. For each order, try to add the remaining nodes
    // at the front.
    std::size_t p = scoring.numparents.size();
    if (n == 1)
    {
        for (size_t node = 0; node < p; node++)
        {
            std::vector<int> order(p, 0);
            // It all vectors with all the nodes.
            // The makes it easier to keep track of which nodes are used.
            for (size_t i = 0; i < p; i++)
            {
                order[i] = i;
            }
            myswap(node, 0, order);
            // score nodes
            std::vector<double> node_scores = scoring.score(order, 0, 1); // OK, score only index 0.
            //  score order
            double order_score = node_scores[node];
            std::tuple<std::vector<int>, double, std::vector<double>>
                opt_tuple = std::make_tuple(order, order_score, node_scores);
            // std::cout << "score " << order_score << std::endl;
            opt_tuples[n].push_back(opt_tuple);
        }
        // std::cout << "order score " << std::get<double>(opt_tuples[1][0]) << std::endl;
    }
    else
    {
        // std::cout << "n=" << n << std::endl;
        // std::cout << "orders " << opt_tuples[n - 1].size() << std::endl;
        for (size_t i = 0; i < opt_tuples[n - 1].size(); i++)
        {
            // std::cout << "particle (order) " << i << " out of " << opt_tuples[n - 1].size() << std::endl;
            //  take one of the orders.
            const auto &[prev_order, prev_score, prev_node_scores] = opt_tuples[n - 1][i];
            // PrintVector(prev_order);
            for (size_t node_index = n - 1; node_index < p; node_index++)
            {
                // Try to put m to the back
                auto [optimal_order, order_score, node_scores, is_optimal] = put_node_in_back(prev_order,
                                                                                              n,
                                                                                              node_index,
                                                                                              prev_node_scores,
                                                                                              prev_score,
                                                                                              scoring);
                // Pruning step I) Keep only if the new node (before at node_index) is optimal at the front.
                // Pruning step II) If it is better to move one of the nodes in the ordering to the front.
                // Pruning step III) If the top and next top nodes can be interchanged while the score is invariant,
                if (is_optimal == true)
                {
                    // if (!prune_right_type(optimal_order, n, node_scores, order_score, scoring))
                    {
                        // Check if it fits better as parent for all others (index 0, or very "left").
                        // PrintVector(optimal_order);
                        // std::cout << order_score << std::endl;
                        std::tuple<std::vector<int>, double, std::vector<double>> tuple = std::make_tuple(optimal_order, order_score, node_scores);
                        opt_tuples[n].push_back(tuple);
                    }
                }
            }
        }
    }
}
void sequential_opt_left_type(OrderScoring &scoring)
{

    std::size_t p = scoring.numparents.size();
    std::cout << "Starting optimization. Build from left (index 0) and add nodes to the right." << std::endl;
    std::vector<std::vector<std::tuple<std::vector<int>, double, std::vector<double>>>> opt_tuples(p + 1);

    for (std::size_t n = 1; n <= p; n++)
    {
        // std::cout << "\nn=" << n << std::endl;
        //  This could be done in parallel.
        // std::cout << "Add new nodes in the back " << std::endl;
        put_nodes_in_back(n, opt_tuples, scoring);
        // Prune opt_tuples. For all elements with the same set of nodes, keep only one with
        // the highest score.
        size_t orders1 = opt_tuples[n].size();
        // std::cout << "# orders: " << opt_tuples[n].size() << std::endl;
        double max_score = -INFINITY;
        std::vector<int> max_order;
        std::vector<double> max_nodescores;
        std::vector<std::vector<bool>> boolmat;
        std::vector<double> order_scores;

        // std::cout << "Prune equal sets " << std::endl;
        // opt_tuples[n] = prune_equal_sets(opt_tuples[n], false);
        // std::cout << "# orders: " << opt_tuples[n].size() << std::endl;
        size_t orders2 = opt_tuples[n].size();
        // std::cout << "Prune gaps " << std::endl;
        // opt_tuples[n] = prune_gaps(opt_tuples[n], n, false, scoring);
        // std::cout << "# orders: " << opt_tuples[n].size() << std::endl;

        for (const auto &t : opt_tuples[n])
        {
            const auto &[optimal_order, order_score, node_scores] = t;
            if (n < 1)
            {
                std::vector<int> tmpv(optimal_order.begin(), optimal_order.begin() + n);
                PrintVector(tmpv);
                std::cout << "score: " << order_score << std::endl;
            }
            if (order_score > max_score)
            {
                max_score = order_score;
                max_order = optimal_order;
                max_nodescores = node_scores;
            }
        }

        // Print some statistics //

        /* Check that scores are correct */
        std::vector<int> tmpv(max_order.begin(), max_order.begin() + n);
        // std::cout << "max scoring sub order " << std::endl;
        // PrintVector(tmpv);
        // PrintVector(max_nodescores);
        // check correct score
        std::vector<double> sc = scoring.score(max_order, 0, n); // Take only the last n elements in the vector
        // PrintVector(*sc);
        double max_score_check = std::accumulate(sc.begin(), sc.end(), 0.0);
        // delete sc;
        //  std::cout << "score: " << max_score << " should be " << max_score_check << std::endl;
        assert(std::abs(max_score - max_score_check) < EPSILON);
        std::cout << n << " & " << orders1 << " & " << orders2 << " & " << max_score << " \\\\" << std::endl;
    }
}
