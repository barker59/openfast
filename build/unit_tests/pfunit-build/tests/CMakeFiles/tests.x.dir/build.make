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

# Include any dependencies generated for this target.
include tests/CMakeFiles/tests.x.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/tests.x.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/tests.x.dir/flags.make

tests/CMakeFiles/tests.x.dir/selfTests.F90.o: tests/CMakeFiles/tests.x.dir/flags.make
tests/CMakeFiles/tests.x.dir/selfTests.F90.o: /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/tests/selfTests.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object tests/CMakeFiles/tests.x.dir/selfTests.F90.o"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/tests/selfTests.F90 -o CMakeFiles/tests.x.dir/selfTests.F90.o

tests/CMakeFiles/tests.x.dir/selfTests.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/tests.x.dir/selfTests.F90.i"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/tests/selfTests.F90 > CMakeFiles/tests.x.dir/selfTests.F90.i

tests/CMakeFiles/tests.x.dir/selfTests.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/tests.x.dir/selfTests.F90.s"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/tests/selfTests.F90 -o CMakeFiles/tests.x.dir/selfTests.F90.s

# Object files for target tests.x
tests_x_OBJECTS = \
"CMakeFiles/tests.x.dir/selfTests.F90.o"

# External object files for target tests.x
tests_x_EXTERNAL_OBJECTS =

tests/tests.x: tests/CMakeFiles/tests.x.dir/selfTests.F90.o
tests/tests.x: tests/CMakeFiles/tests.x.dir/build.make
tests/tests.x: source/libpfunit.a
tests/tests.x: tests/libtestpfunit.a
tests/tests.x: source/libpfunit.a
tests/tests.x: tests/CMakeFiles/tests.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable tests.x"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/tests.x.dir/build: tests/tests.x

.PHONY : tests/CMakeFiles/tests.x.dir/build

tests/CMakeFiles/tests.x.dir/clean:
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/tests.x.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/tests.x.dir/clean

tests/CMakeFiles/tests.x.dir/depend:
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit/tests /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build/tests/CMakeFiles/tests.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/tests.x.dir/depend

