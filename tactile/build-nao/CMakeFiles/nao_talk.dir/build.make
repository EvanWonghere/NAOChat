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
CMAKE_SOURCE_DIR = /home/yufeng/naoTalk/naottkk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yufeng/naoTalk/naottkk/build-nao

# Include any dependencies generated for this target.
include CMakeFiles/nao_talk.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/nao_talk.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/nao_talk.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nao_talk.dir/flags.make

CMakeFiles/nao_talk.dir/main.cpp.o: CMakeFiles/nao_talk.dir/flags.make
CMakeFiles/nao_talk.dir/main.cpp.o: ../main.cpp
CMakeFiles/nao_talk.dir/main.cpp.o: CMakeFiles/nao_talk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build-nao/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nao_talk.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/nao_talk.dir/main.cpp.o -MF CMakeFiles/nao_talk.dir/main.cpp.o.d -o CMakeFiles/nao_talk.dir/main.cpp.o -c /home/yufeng/naoTalk/naottkk/main.cpp

CMakeFiles/nao_talk.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nao_talk.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/naottkk/main.cpp > CMakeFiles/nao_talk.dir/main.cpp.i

CMakeFiles/nao_talk.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nao_talk.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/naottkk/main.cpp -o CMakeFiles/nao_talk.dir/main.cpp.s

# Object files for target nao_talk
nao_talk_OBJECTS = \
"CMakeFiles/nao_talk.dir/main.cpp.o"

# External object files for target nao_talk
nao_talk_EXTERNAL_OBJECTS =

sdk/bin/nao_talk: CMakeFiles/nao_talk.dir/main.cpp.o
sdk/bin/nao_talk: CMakeFiles/nao_talk.dir/build.make
sdk/bin/nao_talk: CMakeFiles/nao_talk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yufeng/naoTalk/naottkk/build-nao/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sdk/bin/nao_talk"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nao_talk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nao_talk.dir/build: sdk/bin/nao_talk
.PHONY : CMakeFiles/nao_talk.dir/build

CMakeFiles/nao_talk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nao_talk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nao_talk.dir/clean

CMakeFiles/nao_talk.dir/depend:
	cd /home/yufeng/naoTalk/naottkk/build-nao && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yufeng/naoTalk/naottkk /home/yufeng/naoTalk/naottkk /home/yufeng/naoTalk/naottkk/build-nao /home/yufeng/naoTalk/naottkk/build-nao /home/yufeng/naoTalk/naottkk/build-nao/CMakeFiles/nao_talk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nao_talk.dir/depend

