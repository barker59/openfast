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

# Include any dependencies generated for this target.
include modules/aerodyn/CMakeFiles/afinfolib.dir/depend.make

# Include the progress variables for this target.
include modules/aerodyn/CMakeFiles/afinfolib.dir/progress.make

# Include the compile flags for this target's objects.
include modules/aerodyn/CMakeFiles/afinfolib.dir/flags.make

modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.o: modules/aerodyn/CMakeFiles/afinfolib.dir/flags.make
modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.o: ../modules/aerodyn/src/AirfoilInfo.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.o"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/abarker/Desktop/Fast/openfast/modules/aerodyn/src/AirfoilInfo.f90 -o CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.o

modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.i"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/abarker/Desktop/Fast/openfast/modules/aerodyn/src/AirfoilInfo.f90 > CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.i

modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.s"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/abarker/Desktop/Fast/openfast/modules/aerodyn/src/AirfoilInfo.f90 -o CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.s

modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.o: modules/aerodyn/CMakeFiles/afinfolib.dir/flags.make
modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.o: ../modules/aerodyn/src/AirfoilInfo_Types.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.o"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/abarker/Desktop/Fast/openfast/modules/aerodyn/src/AirfoilInfo_Types.f90 -o CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.o

modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.i"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/abarker/Desktop/Fast/openfast/modules/aerodyn/src/AirfoilInfo_Types.f90 > CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.i

modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.s"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && /usr/local/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/abarker/Desktop/Fast/openfast/modules/aerodyn/src/AirfoilInfo_Types.f90 -o CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.s

# Object files for target afinfolib
afinfolib_OBJECTS = \
"CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.o" \
"CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.o"

# External object files for target afinfolib
afinfolib_EXTERNAL_OBJECTS =

modules/aerodyn/libafinfolib.a: modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo.f90.o
modules/aerodyn/libafinfolib.a: modules/aerodyn/CMakeFiles/afinfolib.dir/src/AirfoilInfo_Types.f90.o
modules/aerodyn/libafinfolib.a: modules/aerodyn/CMakeFiles/afinfolib.dir/build.make
modules/aerodyn/libafinfolib.a: modules/aerodyn/CMakeFiles/afinfolib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/abarker/Desktop/Fast/openfast/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking Fortran static library libafinfolib.a"
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && $(CMAKE_COMMAND) -P CMakeFiles/afinfolib.dir/cmake_clean_target.cmake
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/afinfolib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/aerodyn/CMakeFiles/afinfolib.dir/build: modules/aerodyn/libafinfolib.a

.PHONY : modules/aerodyn/CMakeFiles/afinfolib.dir/build

modules/aerodyn/CMakeFiles/afinfolib.dir/clean:
	cd /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn && $(CMAKE_COMMAND) -P CMakeFiles/afinfolib.dir/cmake_clean.cmake
.PHONY : modules/aerodyn/CMakeFiles/afinfolib.dir/clean

modules/aerodyn/CMakeFiles/afinfolib.dir/depend:
	cd /Users/abarker/Desktop/Fast/openfast/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abarker/Desktop/Fast/openfast /Users/abarker/Desktop/Fast/openfast/modules/aerodyn /Users/abarker/Desktop/Fast/openfast/build /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn /Users/abarker/Desktop/Fast/openfast/build/modules/aerodyn/CMakeFiles/afinfolib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/aerodyn/CMakeFiles/afinfolib.dir/depend
