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
CMAKE_SOURCE_DIR = /home/yufeng/naoTalk/record

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yufeng/naoTalk/record/build

# Include any dependencies generated for this target.
include CMakeFiles/ALSoundProcessing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ALSoundProcessing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ALSoundProcessing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ALSoundProcessing.dir/flags.make

CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o: CMakeFiles/ALSoundProcessing.dir/flags.make
CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o: CMakeFiles/ALSoundProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/record/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o -MF CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o.d -o CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o -c /home/yufeng/naoTalk/record/src/main.cpp

CMakeFiles/ALSoundProcessing.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ALSoundProcessing.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/record/src/main.cpp > CMakeFiles/ALSoundProcessing.dir/src/main.cpp.i

CMakeFiles/ALSoundProcessing.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ALSoundProcessing.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/record/src/main.cpp -o CMakeFiles/ALSoundProcessing.dir/src/main.cpp.s

CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o: CMakeFiles/ALSoundProcessing.dir/flags.make
CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o: ../src/process.cpp
CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o: CMakeFiles/ALSoundProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/record/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o -MF CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o.d -o CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o -c /home/yufeng/naoTalk/record/src/process.cpp

CMakeFiles/ALSoundProcessing.dir/src/process.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ALSoundProcessing.dir/src/process.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufeng/naoTalk/record/src/process.cpp > CMakeFiles/ALSoundProcessing.dir/src/process.cpp.i

CMakeFiles/ALSoundProcessing.dir/src/process.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ALSoundProcessing.dir/src/process.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufeng/naoTalk/record/src/process.cpp -o CMakeFiles/ALSoundProcessing.dir/src/process.cpp.s

CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o: CMakeFiles/ALSoundProcessing.dir/flags.make
CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o: ../src/linuxrec.c
CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o: CMakeFiles/ALSoundProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/record/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o -MF CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o.d -o CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o -c /home/yufeng/naoTalk/record/src/linuxrec.c

CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yufeng/naoTalk/record/src/linuxrec.c > CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.i

CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yufeng/naoTalk/record/src/linuxrec.c -o CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.s

CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o: CMakeFiles/ALSoundProcessing.dir/flags.make
CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o: ../src/speech_recognizer.c
CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o: CMakeFiles/ALSoundProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufeng/naoTalk/record/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o -MF CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o.d -o CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o -c /home/yufeng/naoTalk/record/src/speech_recognizer.c

CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yufeng/naoTalk/record/src/speech_recognizer.c > CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.i

CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yufeng/naoTalk/record/src/speech_recognizer.c -o CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.s

# Object files for target ALSoundProcessing
ALSoundProcessing_OBJECTS = \
"CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o" \
"CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o" \
"CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o" \
"CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o"

# External object files for target ALSoundProcessing
ALSoundProcessing_EXTERNAL_OBJECTS =

sdk/bin/ALSoundProcessing: CMakeFiles/ALSoundProcessing.dir/src/main.cpp.o
sdk/bin/ALSoundProcessing: CMakeFiles/ALSoundProcessing.dir/src/process.cpp.o
sdk/bin/ALSoundProcessing: CMakeFiles/ALSoundProcessing.dir/src/linuxrec.c.o
sdk/bin/ALSoundProcessing: CMakeFiles/ALSoundProcessing.dir/src/speech_recognizer.c.o
sdk/bin/ALSoundProcessing: CMakeFiles/ALSoundProcessing.dir/build.make
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalcommon.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalproxies.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalthread.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalvalue.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalerror.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libqi.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libboost_system.so.1.59.0
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalaudio.so
sdk/bin/ALSoundProcessing: /home/yufeng/naoTalk/lib/libalextractor.so
sdk/bin/ALSoundProcessing: CMakeFiles/ALSoundProcessing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yufeng/naoTalk/record/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable sdk/bin/ALSoundProcessing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ALSoundProcessing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ALSoundProcessing.dir/build: sdk/bin/ALSoundProcessing
.PHONY : CMakeFiles/ALSoundProcessing.dir/build

CMakeFiles/ALSoundProcessing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ALSoundProcessing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ALSoundProcessing.dir/clean

CMakeFiles/ALSoundProcessing.dir/depend:
	cd /home/yufeng/naoTalk/record/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yufeng/naoTalk/record /home/yufeng/naoTalk/record /home/yufeng/naoTalk/record/build /home/yufeng/naoTalk/record/build /home/yufeng/naoTalk/record/build/CMakeFiles/ALSoundProcessing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ALSoundProcessing.dir/depend
