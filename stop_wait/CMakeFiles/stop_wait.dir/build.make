# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/cyc/usr/opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/cyc/usr/opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait

# Include any dependencies generated for this target.
include CMakeFiles/stop_wait.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stop_wait.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stop_wait.dir/flags.make

CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o: src/SRReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/SRReceiver.cpp

CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/SRReceiver.cpp > CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/SRReceiver.cpp -o CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.requires

CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.provides: CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.provides

CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o


CMakeFiles/stop_wait.dir/src/SRSender.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/SRSender.cpp.o: src/SRSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/stop_wait.dir/src/SRSender.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/SRSender.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/SRSender.cpp

CMakeFiles/stop_wait.dir/src/SRSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/SRSender.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/SRSender.cpp > CMakeFiles/stop_wait.dir/src/SRSender.cpp.i

CMakeFiles/stop_wait.dir/src/SRSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/SRSender.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/SRSender.cpp -o CMakeFiles/stop_wait.dir/src/SRSender.cpp.s

CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.requires

CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.provides: CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.provides

CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/SRSender.cpp.o


CMakeFiles/stop_wait.dir/src/StopWait.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/StopWait.cpp.o: src/StopWait.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/stop_wait.dir/src/StopWait.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/StopWait.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWait.cpp

CMakeFiles/stop_wait.dir/src/StopWait.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/StopWait.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWait.cpp > CMakeFiles/stop_wait.dir/src/StopWait.cpp.i

CMakeFiles/stop_wait.dir/src/StopWait.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/StopWait.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWait.cpp -o CMakeFiles/stop_wait.dir/src/StopWait.cpp.s

CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.requires

CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.provides: CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.provides

CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/StopWait.cpp.o


CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o: src/StopWaitRdtReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWaitRdtReceiver.cpp

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWaitRdtReceiver.cpp > CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWaitRdtReceiver.cpp -o CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.requires

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.provides: CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.provides

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o


CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o: src/StopWaitRdtSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWaitRdtSender.cpp

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWaitRdtSender.cpp > CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.i

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/StopWaitRdtSender.cpp -o CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.s

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.requires

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.provides: CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.provides

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o


CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o: src/TCPReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/TCPReceiver.cpp

CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/TCPReceiver.cpp > CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/TCPReceiver.cpp -o CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.requires

CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.provides: CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.provides

CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o


CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o: src/TCPSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o -c /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/TCPSender.cpp

CMakeFiles/stop_wait.dir/src/TCPSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/TCPSender.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/TCPSender.cpp > CMakeFiles/stop_wait.dir/src/TCPSender.cpp.i

CMakeFiles/stop_wait.dir/src/TCPSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/TCPSender.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/src/TCPSender.cpp -o CMakeFiles/stop_wait.dir/src/TCPSender.cpp.s

CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.requires:

.PHONY : CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.requires

CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.provides: CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.requires
	$(MAKE) -f CMakeFiles/stop_wait.dir/build.make CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.provides.build
.PHONY : CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.provides

CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.provides.build: CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o


# Object files for target stop_wait
stop_wait_OBJECTS = \
"CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o" \
"CMakeFiles/stop_wait.dir/src/SRSender.cpp.o" \
"CMakeFiles/stop_wait.dir/src/StopWait.cpp.o" \
"CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o" \
"CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o" \
"CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o" \
"CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o"

# External object files for target stop_wait
stop_wait_EXTERNAL_OBJECTS =

bin/stop_wait: CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/src/SRSender.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/src/StopWait.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o
bin/stop_wait: CMakeFiles/stop_wait.dir/build.make
bin/stop_wait: lib/libnetsim.a
bin/stop_wait: CMakeFiles/stop_wait.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable bin/stop_wait"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stop_wait.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stop_wait.dir/build: bin/stop_wait

.PHONY : CMakeFiles/stop_wait.dir/build

CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/SRReceiver.cpp.o.requires
CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/SRSender.cpp.o.requires
CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/StopWait.cpp.o.requires
CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.o.requires
CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.o.requires
CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/TCPReceiver.cpp.o.requires
CMakeFiles/stop_wait.dir/requires: CMakeFiles/stop_wait.dir/src/TCPSender.cpp.o.requires

.PHONY : CMakeFiles/stop_wait.dir/requires

CMakeFiles/stop_wait.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stop_wait.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stop_wait.dir/clean

CMakeFiles/stop_wait.dir/depend:
	cd /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait /home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/CMakeFiles/stop_wait.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stop_wait.dir/depend

