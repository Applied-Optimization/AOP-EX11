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
include EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/compiler_depend.make

# Include the progress variables for this target.
include EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/progress.make

# Include the compile flags for this target's objects.
include EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/flags.make

EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o: EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/flags.make
EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o: /home/deepshukla/aopt-exercise11/aopt-exercise11/EqualityConstrainedNewton/main.cc
EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o: EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/deepshukla/aopt-exercise11/aopt-exercise11/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o -MF CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o.d -o CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o -c /home/deepshukla/aopt-exercise11/aopt-exercise11/EqualityConstrainedNewton/main.cc

EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/EqualityConstrainedNewton.dir/main.cc.i"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/deepshukla/aopt-exercise11/aopt-exercise11/EqualityConstrainedNewton/main.cc > CMakeFiles/EqualityConstrainedNewton.dir/main.cc.i

EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/EqualityConstrainedNewton.dir/main.cc.s"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/deepshukla/aopt-exercise11/aopt-exercise11/EqualityConstrainedNewton/main.cc -o CMakeFiles/EqualityConstrainedNewton.dir/main.cc.s

# Object files for target EqualityConstrainedNewton
EqualityConstrainedNewton_OBJECTS = \
"CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o"

# External object files for target EqualityConstrainedNewton
EqualityConstrainedNewton_EXTERNAL_OBJECTS =

Build/bin/EqualityConstrainedNewton: EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/main.cc.o
Build/bin/EqualityConstrainedNewton: EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/build.make
Build/bin/EqualityConstrainedNewton: EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/deepshukla/aopt-exercise11/aopt-exercise11/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Build/bin/EqualityConstrainedNewton"
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EqualityConstrainedNewton.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/build: Build/bin/EqualityConstrainedNewton
.PHONY : EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/build

EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/clean:
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton && $(CMAKE_COMMAND) -P CMakeFiles/EqualityConstrainedNewton.dir/cmake_clean.cmake
.PHONY : EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/clean

EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/depend:
	cd /home/deepshukla/aopt-exercise11/aopt-exercise11/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deepshukla/aopt-exercise11/aopt-exercise11 /home/deepshukla/aopt-exercise11/aopt-exercise11/EqualityConstrainedNewton /home/deepshukla/aopt-exercise11/aopt-exercise11/build /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton /home/deepshukla/aopt-exercise11/aopt-exercise11/build/EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : EqualityConstrainedNewton/CMakeFiles/EqualityConstrainedNewton.dir/depend

