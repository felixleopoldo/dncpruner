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

# Utility rule file for pet-pet_time.data.

# Include the progress variables for this target.
include example/pet/CMakeFiles/pet-pet_time.data.dir/progress.make

example/pet/CMakeFiles/pet-pet_time.data: example/pet/pet_time.data


example/pet/pet_time.data: ../example/pet/pet_time.data
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspaces/order_smc/vSMC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating pet_time.data"
	cd /workspaces/order_smc/vSMC/build/example/pet && /usr/bin/cmake -E create_symlink /workspaces/order_smc/vSMC/example/pet/pet_time.data /workspaces/order_smc/vSMC/build/example/pet/pet_time.data

pet-pet_time.data: example/pet/CMakeFiles/pet-pet_time.data
pet-pet_time.data: example/pet/pet_time.data
pet-pet_time.data: example/pet/CMakeFiles/pet-pet_time.data.dir/build.make

.PHONY : pet-pet_time.data

# Rule to build all files generated by this target.
example/pet/CMakeFiles/pet-pet_time.data.dir/build: pet-pet_time.data

.PHONY : example/pet/CMakeFiles/pet-pet_time.data.dir/build

example/pet/CMakeFiles/pet-pet_time.data.dir/clean:
	cd /workspaces/order_smc/vSMC/build/example/pet && $(CMAKE_COMMAND) -P CMakeFiles/pet-pet_time.data.dir/cmake_clean.cmake
.PHONY : example/pet/CMakeFiles/pet-pet_time.data.dir/clean

example/pet/CMakeFiles/pet-pet_time.data.dir/depend:
	cd /workspaces/order_smc/vSMC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/order_smc/vSMC /workspaces/order_smc/vSMC/example/pet /workspaces/order_smc/vSMC/build /workspaces/order_smc/vSMC/build/example/pet /workspaces/order_smc/vSMC/build/example/pet/CMakeFiles/pet-pet_time.data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/pet/CMakeFiles/pet-pet_time.data.dir/depend

