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

# Utility rule file for example_std.

# Include the progress variables for this target.
include example/CMakeFiles/example_std.dir/progress.make

example_std: example/CMakeFiles/example_std.dir/build.make

.PHONY : example_std

# Rule to build all files generated by this target.
example/CMakeFiles/example_std.dir/build: example_std

.PHONY : example/CMakeFiles/example_std.dir/build

example/CMakeFiles/example_std.dir/clean:
	cd /workspaces/order_smc/vSMC/build/example && $(CMAKE_COMMAND) -P CMakeFiles/example_std.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/example_std.dir/clean

example/CMakeFiles/example_std.dir/depend:
	cd /workspaces/order_smc/vSMC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/order_smc/vSMC /workspaces/order_smc/vSMC/example /workspaces/order_smc/vSMC/build /workspaces/order_smc/vSMC/build/example /workspaces/order_smc/vSMC/build/example/CMakeFiles/example_std.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/example_std.dir/depend

