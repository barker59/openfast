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
CMAKE_SOURCE_DIR = /Users/abarker/Desktop/Fast/openfast

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abarker/Desktop/Fast/openfast/build

# Utility rule file for pfunit.

# Include the progress variables for this target.
include unit_tests/CMakeFiles/pfunit.dir/progress.make

unit_tests/CMakeFiles/pfunit: unit_tests/CMakeFiles/pfunit-complete


unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-install
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-mkdir
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-download
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-update
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-patch
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-configure
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-build
unit_tests/CMakeFiles/pfunit-complete: unit_tests/pfunit-stamp/pfunit-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/CMakeFiles
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/CMakeFiles/pfunit-complete
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-done

unit_tests/pfunit-stamp/pfunit-install: unit_tests/pfunit-stamp/pfunit-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && $(MAKE) install
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-install

unit_tests/pfunit-stamp/pfunit-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-tmp
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-prefix/src
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-mkdir

unit_tests/pfunit-stamp/pfunit-download: unit_tests/pfunit-stamp/pfunit-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-download

unit_tests/pfunit-stamp/pfunit-update: unit_tests/pfunit-stamp/pfunit-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-update

unit_tests/pfunit-stamp/pfunit-patch: unit_tests/pfunit-stamp/pfunit-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-patch

unit_tests/pfunit-stamp/pfunit-configure: unit_tests/pfunit-tmp/pfunit-cfgcmd.txt
unit_tests/pfunit-stamp/pfunit-configure: unit_tests/pfunit-stamp/pfunit-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -DCMAKE_INSTALL_PREFIX=/Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit -DCMAKE_Fortran_COMPILER=/usr/local/bin/gfortran -DROBUST=OFF "-GUnix Makefiles" /Users/abarker/Desktop/Fast/openfast/unit_tests/pfunit
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-configure

unit_tests/pfunit-stamp/pfunit-build: unit_tests/pfunit-stamp/pfunit-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'pfunit'"
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && $(MAKE)
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-build && /Users/abarker/miniconda3/lib/python3.8/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/abarker/Desktop/Fast/openfast/build/unit_tests/pfunit-stamp/pfunit-build

pfunit: unit_tests/CMakeFiles/pfunit
pfunit: unit_tests/CMakeFiles/pfunit-complete
pfunit: unit_tests/pfunit-stamp/pfunit-install
pfunit: unit_tests/pfunit-stamp/pfunit-mkdir
pfunit: unit_tests/pfunit-stamp/pfunit-download
pfunit: unit_tests/pfunit-stamp/pfunit-update
pfunit: unit_tests/pfunit-stamp/pfunit-patch
pfunit: unit_tests/pfunit-stamp/pfunit-configure
pfunit: unit_tests/pfunit-stamp/pfunit-build
pfunit: unit_tests/CMakeFiles/pfunit.dir/build.make

.PHONY : pfunit

# Rule to build all files generated by this target.
unit_tests/CMakeFiles/pfunit.dir/build: pfunit

.PHONY : unit_tests/CMakeFiles/pfunit.dir/build

unit_tests/CMakeFiles/pfunit.dir/clean:
	cd /Users/abarker/Desktop/Fast/openfast/build/unit_tests && $(CMAKE_COMMAND) -P CMakeFiles/pfunit.dir/cmake_clean.cmake
.PHONY : unit_tests/CMakeFiles/pfunit.dir/clean

unit_tests/CMakeFiles/pfunit.dir/depend:
	cd /Users/abarker/Desktop/Fast/openfast/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abarker/Desktop/Fast/openfast /Users/abarker/Desktop/Fast/openfast/unit_tests /Users/abarker/Desktop/Fast/openfast/build /Users/abarker/Desktop/Fast/openfast/build/unit_tests /Users/abarker/Desktop/Fast/openfast/build/unit_tests/CMakeFiles/pfunit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unit_tests/CMakeFiles/pfunit.dir/depend

