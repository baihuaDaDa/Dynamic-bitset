# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/2069.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2069.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2069.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2069.dir/flags.make

CMakeFiles/2069.dir/main.cpp.o: CMakeFiles/2069.dir/flags.make
CMakeFiles/2069.dir/main.cpp.o: ../main.cpp
CMakeFiles/2069.dir/main.cpp.o: CMakeFiles/2069.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2069.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2069.dir/main.cpp.o -MF CMakeFiles/2069.dir/main.cpp.o.d -o CMakeFiles/2069.dir/main.cpp.o -c "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/main.cpp"

CMakeFiles/2069.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2069.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/main.cpp" > CMakeFiles/2069.dir/main.cpp.i

CMakeFiles/2069.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2069.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/main.cpp" -o CMakeFiles/2069.dir/main.cpp.s

# Object files for target 2069
2069_OBJECTS = \
"CMakeFiles/2069.dir/main.cpp.o"

# External object files for target 2069
2069_EXTERNAL_OBJECTS =

2069: CMakeFiles/2069.dir/main.cpp.o
2069: CMakeFiles/2069.dir/build.make
2069: CMakeFiles/2069.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2069"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2069.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2069.dir/build: 2069
.PHONY : CMakeFiles/2069.dir/build

CMakeFiles/2069.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2069.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2069.dir/clean

CMakeFiles/2069.dir/depend:
	cd "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069" "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069" "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug" "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug" "/mnt/c/Users/zwg_w/Desktop/CLion/OJ Exam/No.3/2069/cmake-build-debug/CMakeFiles/2069.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/2069.dir/depend
