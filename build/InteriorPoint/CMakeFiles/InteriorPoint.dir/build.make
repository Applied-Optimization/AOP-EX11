# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deepshukla/aopt-exercise11/aopt-exercise11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deepshukla/aopt-exercise11/aopt-exercise11/build

# Include any dependencies generated for this target.
include InteriorPoint/CMakeFiles/InteriorPoint.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include InteriorPoint/CMakeFiles/InteriorPoint.dir/compiler_depend.make

# Include the progress variables for this target.
include InteriorPoint/CMakeFiles/InteriorPoint.dir/progress.make

# Include the compile flags for this target's objects.
include InteriorPoint/CMakeFiles/InteriorPoint.dir/flags.make

InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.o: InteriorPoint/CMakeFiles/InteriorPoint.dir/flags.make
InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.o: /home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/main.cc
InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.o: InteriorPoint/CMakeFiles/InteriorPoint.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deepshukla/aopt-exercise11/aopt-exercise11/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.o"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.o -MF CMakeFiles/InteriorPoint.dir/main.cc.o.d -o CMakeFiles/InteriorPoint.dir/main.cc.o -c /home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/main.cc

InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/InteriorPoint.dir/main.cc.i"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/main.cc > CMakeFiles/InteriorPoint.dir/main.cc.i

InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/InteriorPoint.dir/main.cc.s"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint/main.cc -o CMakeFiles/InteriorPoint.dir/main.cc.s

# Object files for target InteriorPoint
InteriorPoint_OBJECTS = \
"CMakeFiles/InteriorPoint.dir/main.cc.o"

# External object files for target InteriorPoint
InteriorPoint_EXTERNAL_OBJECTS =

Build/bin/InteriorPoint: InteriorPoint/CMakeFiles/InteriorPoint.dir/main.cc.o
Build/bin/InteriorPoint: InteriorPoint/CMakeFiles/InteriorPoint.dir/build.make
Build/bin/InteriorPoint: InteriorPoint/CMakeFiles/InteriorPoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/deepshukla/aopt-exercise11/aopt-exercise11/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/InteriorPoint"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/InteriorPoint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
InteriorPoint/CMakeFiles/InteriorPoint.dir/build: Build/bin/InteriorPoint
.PHONY : InteriorPoint/CMakeFiles/InteriorPoint.dir/build

InteriorPoint/CMakeFiles/InteriorPoint.dir/clean:
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint && $(CMAKE_COMMAND) -P CMakeFiles/InteriorPoint.dir/cmake_clean.cmake
.PHONY : InteriorPoint/CMakeFiles/InteriorPoint.dir/clean

InteriorPoint/CMakeFiles/InteriorPoint.dir/depend:
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deepshukla/aopt-exercise11/aopt-exercise11 /home/deepshukla/aopt-exercise11/aopt-exercise11/InteriorPoint /home/deepshukla/aopt-exercise11/aopt-exercise11/build /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint /home/deepshukla/aopt-exercise11/aopt-exercise11/build/InteriorPoint/CMakeFiles/InteriorPoint.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : InteriorPoint/CMakeFiles/InteriorPoint.dir/depend

