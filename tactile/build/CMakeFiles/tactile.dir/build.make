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
CMAKE_BINARY_DIR = /home/yufeng/naoTalk/naottkk/build

# Include any dependencies generated for this target.
include CMakeFiles/tactile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tactile.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tactile.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tactile.dir/flags.make

CMakeFiles/tactile.dir/src/main.cpp.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/tactile.dir/src/main.cpp.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tactile.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/main.cpp.o -MF CMakeFiles/tactile.dir/src/main.cpp.o.d -o CMakeFiles/tactile.dir/src/main.cpp.o -c /home/yufeng/naoTalk/naottkk/src/main.cpp

CMakeFiles/tactile.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tactile.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/main.cpp > CMakeFiles/tactile.dir/src/main.cpp.i

CMakeFiles/tactile.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tactile.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/main.cpp -o CMakeFiles/tactile.dir/src/main.cpp.s

CMakeFiles/tactile.dir/src/spark.cpp.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/spark.cpp.o: ../src/spark.cpp
CMakeFiles/tactile.dir/src/spark.cpp.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tactile.dir/src/spark.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/spark.cpp.o -MF CMakeFiles/tactile.dir/src/spark.cpp.o.d -o CMakeFiles/tactile.dir/src/spark.cpp.o -c /home/yufeng/naoTalk/naottkk/src/spark.cpp

CMakeFiles/tactile.dir/src/spark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tactile.dir/src/spark.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/spark.cpp > CMakeFiles/tactile.dir/src/spark.cpp.i

CMakeFiles/tactile.dir/src/spark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tactile.dir/src/spark.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/spark.cpp -o CMakeFiles/tactile.dir/src/spark.cpp.s

CMakeFiles/tactile.dir/src/tactile.cpp.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/tactile.cpp.o: ../src/tactile.cpp
CMakeFiles/tactile.dir/src/tactile.cpp.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tactile.dir/src/tactile.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/tactile.cpp.o -MF CMakeFiles/tactile.dir/src/tactile.cpp.o.d -o CMakeFiles/tactile.dir/src/tactile.cpp.o -c /home/yufeng/naoTalk/naottkk/src/tactile.cpp

CMakeFiles/tactile.dir/src/tactile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tactile.dir/src/tactile.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/tactile.cpp > CMakeFiles/tactile.dir/src/tactile.cpp.i

CMakeFiles/tactile.dir/src/tactile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tactile.dir/src/tactile.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/tactile.cpp -o CMakeFiles/tactile.dir/src/tactile.cpp.s

CMakeFiles/tactile.dir/src/thinkMotion.cpp.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/thinkMotion.cpp.o: ../src/thinkMotion.cpp
CMakeFiles/tactile.dir/src/thinkMotion.cpp.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tactile.dir/src/thinkMotion.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/thinkMotion.cpp.o -MF CMakeFiles/tactile.dir/src/thinkMotion.cpp.o.d -o CMakeFiles/tactile.dir/src/thinkMotion.cpp.o -c /home/yufeng/naoTalk/naottkk/src/thinkMotion.cpp

CMakeFiles/tactile.dir/src/thinkMotion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tactile.dir/src/thinkMotion.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/thinkMotion.cpp > CMakeFiles/tactile.dir/src/thinkMotion.cpp.i

CMakeFiles/tactile.dir/src/thinkMotion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tactile.dir/src/thinkMotion.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/thinkMotion.cpp -o CMakeFiles/tactile.dir/src/thinkMotion.cpp.s

CMakeFiles/tactile.dir/src/demo.c.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/demo.c.o: ../src/demo.c
CMakeFiles/tactile.dir/src/demo.c.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tactile.dir/src/demo.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/demo.c.o -MF CMakeFiles/tactile.dir/src/demo.c.o.d -o CMakeFiles/tactile.dir/src/demo.c.o -c /home/yufeng/naoTalk/naottkk/src/demo.c

CMakeFiles/tactile.dir/src/demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tactile.dir/src/demo.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/demo.c > CMakeFiles/tactile.dir/src/demo.c.i

CMakeFiles/tactile.dir/src/demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tactile.dir/src/demo.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/demo.c -o CMakeFiles/tactile.dir/src/demo.c.s

CMakeFiles/tactile.dir/src/rec.c.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/rec.c.o: ../src/rec.c
CMakeFiles/tactile.dir/src/rec.c.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/tactile.dir/src/rec.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/rec.c.o -MF CMakeFiles/tactile.dir/src/rec.c.o.d -o CMakeFiles/tactile.dir/src/rec.c.o -c /home/yufeng/naoTalk/naottkk/src/rec.c

CMakeFiles/tactile.dir/src/rec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tactile.dir/src/rec.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/rec.c > CMakeFiles/tactile.dir/src/rec.c.i

CMakeFiles/tactile.dir/src/rec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tactile.dir/src/rec.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/rec.c -o CMakeFiles/tactile.dir/src/rec.c.s

CMakeFiles/tactile.dir/src/recognizer.c.o: CMakeFiles/tactile.dir/flags.make
CMakeFiles/tactile.dir/src/recognizer.c.o: ../src/recognizer.c
CMakeFiles/tactile.dir/src/recognizer.c.o: CMakeFiles/tactile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/tactile.dir/src/recognizer.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tactile.dir/src/recognizer.c.o -MF CMakeFiles/tactile.dir/src/recognizer.c.o.d -o CMakeFiles/tactile.dir/src/recognizer.c.o -c /home/yufeng/naoTalk/naottkk/src/recognizer.c

CMakeFiles/tactile.dir/src/recognizer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tactile.dir/src/recognizer.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yufeng/naoTalk/naottkk/src/recognizer.c > CMakeFiles/tactile.dir/src/recognizer.c.i

CMakeFiles/tactile.dir/src/recognizer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tactile.dir/src/recognizer.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yufeng/naoTalk/naottkk/src/recognizer.c -o CMakeFiles/tactile.dir/src/recognizer.c.s

# Object files for target tactile
tactile_OBJECTS = \
"CMakeFiles/tactile.dir/src/main.cpp.o" \
"CMakeFiles/tactile.dir/src/spark.cpp.o" \
"CMakeFiles/tactile.dir/src/tactile.cpp.o" \
"CMakeFiles/tactile.dir/src/thinkMotion.cpp.o" \
"CMakeFiles/tactile.dir/src/demo.c.o" \
"CMakeFiles/tactile.dir/src/rec.c.o" \
"CMakeFiles/tactile.dir/src/recognizer.c.o"

# External object files for target tactile
tactile_EXTERNAL_OBJECTS =

sdk/bin/tactile: CMakeFiles/tactile.dir/src/main.cpp.o
sdk/bin/tactile: CMakeFiles/tactile.dir/src/spark.cpp.o
sdk/bin/tactile: CMakeFiles/tactile.dir/src/tactile.cpp.o
sdk/bin/tactile: CMakeFiles/tactile.dir/src/thinkMotion.cpp.o
sdk/bin/tactile: CMakeFiles/tactile.dir/src/demo.c.o
sdk/bin/tactile: CMakeFiles/tactile.dir/src/rec.c.o
sdk/bin/tactile: CMakeFiles/tactile.dir/src/recognizer.c.o
sdk/bin/tactile: CMakeFiles/tactile.dir/build.make
sdk/bin/tactile: ../../lib/libalcommon.so
sdk/bin/tactile: ../../lib/libalproxies.so
sdk/bin/tactile: ../../lib/libalthread.so
sdk/bin/tactile: ../../lib/libalvalue.so
sdk/bin/tactile: ../../lib/libalerror.so
sdk/bin/tactile: ../../lib/libqi.so
sdk/bin/tactile: ../../lib/libboost_system.so.1.59.0
sdk/bin/tactile: CMakeFiles/tactile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yufeng/naoTalk/naottkk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable sdk/bin/tactile"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tactile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tactile.dir/build: sdk/bin/tactile
.PHONY : CMakeFiles/tactile.dir/build

CMakeFiles/tactile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tactile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tactile.dir/clean

CMakeFiles/tactile.dir/depend:
	cd /home/yufeng/naoTalk/naottkk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yufeng/naoTalk/naottkk /home/yufeng/naoTalk/naottkk /home/yufeng/naoTalk/naottkk/build /home/yufeng/naoTalk/naottkk/build /home/yufeng/naoTalk/naottkk/build/CMakeFiles/tactile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tactile.dir/depend

