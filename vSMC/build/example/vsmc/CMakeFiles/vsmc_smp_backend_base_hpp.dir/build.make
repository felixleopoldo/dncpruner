# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/order_smc/vSMC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/order_smc/vSMC/build

# Include any dependencies generated for this target.
include example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/depend.make

# Include the progress variables for this target.
include example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/progress.make

# Include the compile flags for this target's objects.
include example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/flags.make

example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.o: example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/flags.make
example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.o: example/vsmc/src/vsmc_smp_backend_base.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/order_smc/vSMC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.o"
	cd /workspaces/order_smc/vSMC/build/example/vsmc && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.o -c /workspaces/order_smc/vSMC/build/example/vsmc/src/vsmc_smp_backend_base.cpp

example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.i"
	cd /workspaces/order_smc/vSMC/build/example/vsmc && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/order_smc/vSMC/build/example/vsmc/src/vsmc_smp_backend_base.cpp > CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.i

example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.s"
	cd /workspaces/order_smc/vSMC/build/example/vsmc && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/order_smc/vSMC/build/example/vsmc/src/vsmc_smp_backend_base.cpp -o CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.s

# Object files for target vsmc_smp_backend_base_hpp
vsmc_smp_backend_base_hpp_OBJECTS = \
"CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.o"

# External object files for target vsmc_smp_backend_base_hpp
vsmc_smp_backend_base_hpp_EXTERNAL_OBJECTS =

example/vsmc/vsmc_smp_backend_base_hpp: example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/src/vsmc_smp_backend_base.cpp.o
example/vsmc/vsmc_smp_backend_base_hpp: example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/build.make
example/vsmc/vsmc_smp_backend_base_hpp: /usr/lib/x86_64-linux-gnu/librt.so
example/vsmc/vsmc_smp_backend_base_hpp: example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/order_smc/vSMC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vsmc_smp_backend_base_hpp"
	cd /workspaces/order_smc/vSMC/build/example/vsmc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vsmc_smp_backend_base_hpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/build: example/vsmc/vsmc_smp_backend_base_hpp

.PHONY : example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/build

example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/clean:
	cd /workspaces/order_smc/vSMC/build/example/vsmc && $(CMAKE_COMMAND) -P CMakeFiles/vsmc_smp_backend_base_hpp.dir/cmake_clean.cmake
.PHONY : example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/clean

example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/depend:
	cd /workspaces/order_smc/vSMC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/order_smc/vSMC /workspaces/order_smc/vSMC/example/vsmc /workspaces/order_smc/vSMC/build /workspaces/order_smc/vSMC/build/example/vsmc /workspaces/order_smc/vSMC/build/example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/vsmc/CMakeFiles/vsmc_smp_backend_base_hpp.dir/depend

