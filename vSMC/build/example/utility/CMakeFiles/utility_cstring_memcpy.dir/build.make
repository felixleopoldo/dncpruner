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
include example/utility/CMakeFiles/utility_cstring_memcpy.dir/depend.make

# Include the progress variables for this target.
include example/utility/CMakeFiles/utility_cstring_memcpy.dir/progress.make

# Include the compile flags for this target's objects.
include example/utility/CMakeFiles/utility_cstring_memcpy.dir/flags.make

example/utility/CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.o: example/utility/CMakeFiles/utility_cstring_memcpy.dir/flags.make
example/utility/CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.o: ../example/utility/src/utility_cstring_memcpy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/order_smc/vSMC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/utility/CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.o"
	cd /workspaces/order_smc/vSMC/build/example/utility && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.o -c /workspaces/order_smc/vSMC/example/utility/src/utility_cstring_memcpy.cpp

example/utility/CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.i"
	cd /workspaces/order_smc/vSMC/build/example/utility && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/order_smc/vSMC/example/utility/src/utility_cstring_memcpy.cpp > CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.i

example/utility/CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.s"
	cd /workspaces/order_smc/vSMC/build/example/utility && /usr/local/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/order_smc/vSMC/example/utility/src/utility_cstring_memcpy.cpp -o CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.s

# Object files for target utility_cstring_memcpy
utility_cstring_memcpy_OBJECTS = \
"CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.o"

# External object files for target utility_cstring_memcpy
utility_cstring_memcpy_EXTERNAL_OBJECTS =

example/utility/utility_cstring_memcpy: example/utility/CMakeFiles/utility_cstring_memcpy.dir/src/utility_cstring_memcpy.cpp.o
example/utility/utility_cstring_memcpy: example/utility/CMakeFiles/utility_cstring_memcpy.dir/build.make
example/utility/utility_cstring_memcpy: /usr/lib/x86_64-linux-gnu/librt.so
example/utility/utility_cstring_memcpy: example/utility/CMakeFiles/utility_cstring_memcpy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/order_smc/vSMC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable utility_cstring_memcpy"
	cd /workspaces/order_smc/vSMC/build/example/utility && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utility_cstring_memcpy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/utility/CMakeFiles/utility_cstring_memcpy.dir/build: example/utility/utility_cstring_memcpy

.PHONY : example/utility/CMakeFiles/utility_cstring_memcpy.dir/build

example/utility/CMakeFiles/utility_cstring_memcpy.dir/clean:
	cd /workspaces/order_smc/vSMC/build/example/utility && $(CMAKE_COMMAND) -P CMakeFiles/utility_cstring_memcpy.dir/cmake_clean.cmake
.PHONY : example/utility/CMakeFiles/utility_cstring_memcpy.dir/clean

example/utility/CMakeFiles/utility_cstring_memcpy.dir/depend:
	cd /workspaces/order_smc/vSMC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/order_smc/vSMC /workspaces/order_smc/vSMC/example/utility /workspaces/order_smc/vSMC/build /workspaces/order_smc/vSMC/build/example/utility /workspaces/order_smc/vSMC/build/example/utility/CMakeFiles/utility_cstring_memcpy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/utility/CMakeFiles/utility_cstring_memcpy.dir/depend

