#ifndef AUXILIARY_H
#define AUXILIARY_H

#include <cassert>
#include <chrono>
#include <cmath>
#include <iostream>
#include <vector>
#include <iterator>
using namespace std;

bool approximatelyEqual(float a, float b, float epsilon);

bool essentiallyEqual(float a, float b, float epsilon);

bool definitelyGreaterThan(float a, float b, float epsilon);

bool definitelyLessThan(float a, float b, float epsilon);

int rand_int_in_range(const size_t &from, const size_t &to);

//void print_matrix(vector<vector<double>>& M);
//template <typename T> void print_matrix(const vector<vector<T>> & matrix);
/**
 * Generic function to print a matrix
*/
template <typename T> void print_matrix(const vector<vector<T>> & matrix) {
    //     //cout << setprecision(2);
    for (size_t i = 0; i < matrix.size(); i++)
    {
        for (size_t j = 0; j < matrix[i].size(); j++)
        {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }
    //cout << setprecision(5);
}


vector<int> unique_sets(const vector<vector<bool>> &mats, const vector<double> &order_scores, double);
// function that prints vector by passing begin and end iterators.
template <typename T>
void print_vector(vector<T> &v, int start, int end)
{
  for (int i = start; i < end; i++)
  {
    cout << v[i] << " ";
  }
  cout << endl;
}
/**
 *  Asserts index_to < index_from.?
 */
inline void move_element(vector<int> &v, const size_t &index_from, const size_t &index_to)
{
  int element_to_move = v[index_from];
  v.erase(v.begin() + index_from);
  v.insert(v.begin() + index_to, element_to_move);
  return;
}

template <typename T>
void myswap(size_t i, size_t j, std::vector<T> &v)
{
  T tmp = v[i];
  v[i] = v[j];
  v[j] = tmp;
}

template <typename T>
void PrintVector(vector<T> &arr, int from = -1, int to = -1)
{
  if (from == -1)
  {
    copy(arr.begin(), arr.end(), ostream_iterator<T>(cout, ","));
  }
  else
  {
    copy(arr.begin() + from, arr.begin() + to, ostream_iterator<T>(cout, ","));
  }
  cout << endl;
}

template <typename T>
void PrintVector(const vector<T> &arr, int from = -1, int to = -1)
{
  const vector<T> vec(arr);
  PrintVector(vec, from, to);
}

template <typename T>
void PrintVector(const vector<T> &arr, vector<int> order)
{
  vector<T> vec(order.size());
  for (size_t i = 0; i < order.size(); i++)
  {
    vec[i] = arr[order[i]];
  }
  PrintVector(vec);
}

#endif