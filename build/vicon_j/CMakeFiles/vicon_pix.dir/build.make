# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/catkin_ws/build

# Include any dependencies generated for this target.
include vicon_j/CMakeFiles/vicon_pix.dir/depend.make

# Include the progress variables for this target.
include vicon_j/CMakeFiles/vicon_pix.dir/progress.make

# Include the compile flags for this target's objects.
include vicon_j/CMakeFiles/vicon_pix.dir/flags.make

vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o: vicon_j/CMakeFiles/vicon_pix.dir/flags.make
vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o: /home/ubuntu/catkin_ws/src/vicon_j/src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vicon_pix.dir/src/main.cpp.o -c /home/ubuntu/catkin_ws/src/vicon_j/src/main.cpp

vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vicon_pix.dir/src/main.cpp.i"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/vicon_j/src/main.cpp > CMakeFiles/vicon_pix.dir/src/main.cpp.i

vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vicon_pix.dir/src/main.cpp.s"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/vicon_j/src/main.cpp -o CMakeFiles/vicon_pix.dir/src/main.cpp.s

vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.requires:
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.requires

vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.provides: vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.requires
	$(MAKE) -f vicon_j/CMakeFiles/vicon_pix.dir/build.make vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.provides.build
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.provides

vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.provides.build: vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o

vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o: vicon_j/CMakeFiles/vicon_pix.dir/flags.make
vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o: /home/ubuntu/catkin_ws/src/vicon_j/src/udp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vicon_pix.dir/src/udp.cpp.o -c /home/ubuntu/catkin_ws/src/vicon_j/src/udp.cpp

vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vicon_pix.dir/src/udp.cpp.i"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/vicon_j/src/udp.cpp > CMakeFiles/vicon_pix.dir/src/udp.cpp.i

vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vicon_pix.dir/src/udp.cpp.s"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/vicon_j/src/udp.cpp -o CMakeFiles/vicon_pix.dir/src/udp.cpp.s

vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.requires:
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.requires

vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.provides: vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.requires
	$(MAKE) -f vicon_j/CMakeFiles/vicon_pix.dir/build.make vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.provides.build
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.provides

vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.provides.build: vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o

vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o: vicon_j/CMakeFiles/vicon_pix.dir/flags.make
vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o: /home/ubuntu/catkin_ws/src/vicon_j/src/vicon.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vicon_pix.dir/src/vicon.cpp.o -c /home/ubuntu/catkin_ws/src/vicon_j/src/vicon.cpp

vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vicon_pix.dir/src/vicon.cpp.i"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/vicon_j/src/vicon.cpp > CMakeFiles/vicon_pix.dir/src/vicon.cpp.i

vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vicon_pix.dir/src/vicon.cpp.s"
	cd /home/ubuntu/catkin_ws/build/vicon_j && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/vicon_j/src/vicon.cpp -o CMakeFiles/vicon_pix.dir/src/vicon.cpp.s

vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.requires:
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.requires

vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.provides: vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.requires
	$(MAKE) -f vicon_j/CMakeFiles/vicon_pix.dir/build.make vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.provides.build
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.provides

vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.provides.build: vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o

# Object files for target vicon_pix
vicon_pix_OBJECTS = \
"CMakeFiles/vicon_pix.dir/src/main.cpp.o" \
"CMakeFiles/vicon_pix.dir/src/udp.cpp.o" \
"CMakeFiles/vicon_pix.dir/src/vicon.cpp.o"

# External object files for target vicon_pix
vicon_pix_EXTERNAL_OBJECTS =

/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: vicon_j/CMakeFiles/vicon_pix.dir/build.make
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/libroscpp.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/librosconsole.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/liblog4cxx.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/libtf2.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/librostime.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /opt/ros/indigo/lib/libcpp_common.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix: vicon_j/CMakeFiles/vicon_pix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix"
	cd /home/ubuntu/catkin_ws/build/vicon_j && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vicon_pix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vicon_j/CMakeFiles/vicon_pix.dir/build: /home/ubuntu/catkin_ws/devel/lib/vicon_j/vicon_pix
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/build

vicon_j/CMakeFiles/vicon_pix.dir/requires: vicon_j/CMakeFiles/vicon_pix.dir/src/main.cpp.o.requires
vicon_j/CMakeFiles/vicon_pix.dir/requires: vicon_j/CMakeFiles/vicon_pix.dir/src/udp.cpp.o.requires
vicon_j/CMakeFiles/vicon_pix.dir/requires: vicon_j/CMakeFiles/vicon_pix.dir/src/vicon.cpp.o.requires
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/requires

vicon_j/CMakeFiles/vicon_pix.dir/clean:
	cd /home/ubuntu/catkin_ws/build/vicon_j && $(CMAKE_COMMAND) -P CMakeFiles/vicon_pix.dir/cmake_clean.cmake
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/clean

vicon_j/CMakeFiles/vicon_pix.dir/depend:
	cd /home/ubuntu/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/catkin_ws/src /home/ubuntu/catkin_ws/src/vicon_j /home/ubuntu/catkin_ws/build /home/ubuntu/catkin_ws/build/vicon_j /home/ubuntu/catkin_ws/build/vicon_j/CMakeFiles/vicon_pix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vicon_j/CMakeFiles/vicon_pix.dir/depend
