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
CMAKE_SOURCE_DIR = /mnt/c/Users/wxdan/Documents/projeto/Dijkstra

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build

# Include any dependencies generated for this target.
include CMakeFiles/dijkstra.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dijkstra.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dijkstra.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dijkstra.dir/flags.make

CMakeFiles/dijkstra.dir/graph.cpp.o: CMakeFiles/dijkstra.dir/flags.make
CMakeFiles/dijkstra.dir/graph.cpp.o: ../graph.cpp
CMakeFiles/dijkstra.dir/graph.cpp.o: CMakeFiles/dijkstra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dijkstra.dir/graph.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dijkstra.dir/graph.cpp.o -MF CMakeFiles/dijkstra.dir/graph.cpp.o.d -o CMakeFiles/dijkstra.dir/graph.cpp.o -c /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/graph.cpp

CMakeFiles/dijkstra.dir/graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dijkstra.dir/graph.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/graph.cpp > CMakeFiles/dijkstra.dir/graph.cpp.i

CMakeFiles/dijkstra.dir/graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dijkstra.dir/graph.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/graph.cpp -o CMakeFiles/dijkstra.dir/graph.cpp.s

CMakeFiles/dijkstra.dir/heap.cpp.o: CMakeFiles/dijkstra.dir/flags.make
CMakeFiles/dijkstra.dir/heap.cpp.o: ../heap.cpp
CMakeFiles/dijkstra.dir/heap.cpp.o: CMakeFiles/dijkstra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dijkstra.dir/heap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dijkstra.dir/heap.cpp.o -MF CMakeFiles/dijkstra.dir/heap.cpp.o.d -o CMakeFiles/dijkstra.dir/heap.cpp.o -c /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/heap.cpp

CMakeFiles/dijkstra.dir/heap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dijkstra.dir/heap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/heap.cpp > CMakeFiles/dijkstra.dir/heap.cpp.i

CMakeFiles/dijkstra.dir/heap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dijkstra.dir/heap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/heap.cpp -o CMakeFiles/dijkstra.dir/heap.cpp.s

CMakeFiles/dijkstra.dir/dijkstra.cpp.o: CMakeFiles/dijkstra.dir/flags.make
CMakeFiles/dijkstra.dir/dijkstra.cpp.o: ../dijkstra.cpp
CMakeFiles/dijkstra.dir/dijkstra.cpp.o: CMakeFiles/dijkstra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/dijkstra.dir/dijkstra.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dijkstra.dir/dijkstra.cpp.o -MF CMakeFiles/dijkstra.dir/dijkstra.cpp.o.d -o CMakeFiles/dijkstra.dir/dijkstra.cpp.o -c /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/dijkstra.cpp

CMakeFiles/dijkstra.dir/dijkstra.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dijkstra.dir/dijkstra.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/dijkstra.cpp > CMakeFiles/dijkstra.dir/dijkstra.cpp.i

CMakeFiles/dijkstra.dir/dijkstra.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dijkstra.dir/dijkstra.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/dijkstra.cpp -o CMakeFiles/dijkstra.dir/dijkstra.cpp.s

CMakeFiles/dijkstra.dir/main.cpp.o: CMakeFiles/dijkstra.dir/flags.make
CMakeFiles/dijkstra.dir/main.cpp.o: ../main.cpp
CMakeFiles/dijkstra.dir/main.cpp.o: CMakeFiles/dijkstra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/dijkstra.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dijkstra.dir/main.cpp.o -MF CMakeFiles/dijkstra.dir/main.cpp.o.d -o CMakeFiles/dijkstra.dir/main.cpp.o -c /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/main.cpp

CMakeFiles/dijkstra.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dijkstra.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/main.cpp > CMakeFiles/dijkstra.dir/main.cpp.i

CMakeFiles/dijkstra.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dijkstra.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/main.cpp -o CMakeFiles/dijkstra.dir/main.cpp.s

# Object files for target dijkstra
dijkstra_OBJECTS = \
"CMakeFiles/dijkstra.dir/graph.cpp.o" \
"CMakeFiles/dijkstra.dir/heap.cpp.o" \
"CMakeFiles/dijkstra.dir/dijkstra.cpp.o" \
"CMakeFiles/dijkstra.dir/main.cpp.o"

# External object files for target dijkstra
dijkstra_EXTERNAL_OBJECTS =

dijkstra: CMakeFiles/dijkstra.dir/graph.cpp.o
dijkstra: CMakeFiles/dijkstra.dir/heap.cpp.o
dijkstra: CMakeFiles/dijkstra.dir/dijkstra.cpp.o
dijkstra: CMakeFiles/dijkstra.dir/main.cpp.o
dijkstra: CMakeFiles/dijkstra.dir/build.make
dijkstra: CMakeFiles/dijkstra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable dijkstra"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dijkstra.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dijkstra.dir/build: dijkstra
.PHONY : CMakeFiles/dijkstra.dir/build

CMakeFiles/dijkstra.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dijkstra.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dijkstra.dir/clean

CMakeFiles/dijkstra.dir/depend:
	cd /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/wxdan/Documents/projeto/Dijkstra /mnt/c/Users/wxdan/Documents/projeto/Dijkstra /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build /mnt/c/Users/wxdan/Documents/projeto/Dijkstra/build/CMakeFiles/dijkstra.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dijkstra.dir/depend
