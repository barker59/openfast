# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build

# Utility rule file for tests.

# Include the progress variables for this target.
include tests/CMakeFiles/tests.dir/progress.make

tests/CMakeFiles/tests: tests/tests.x
	/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests/tests.x

tests: tests/CMakeFiles/tests
tests: tests/CMakeFiles/tests.dir/build.make

.PHONY : tests

# Rule to build all files generated by this target.
tests/CMakeFiles/tests.dir/build: tests

.PHONY : tests/CMakeFiles/tests.dir/build

tests/CMakeFiles/tests.dir/clean:
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/tests.dir/clean

tests/CMakeFiles/tests.dir/depend:
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/tests /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/tests.dir/depend

