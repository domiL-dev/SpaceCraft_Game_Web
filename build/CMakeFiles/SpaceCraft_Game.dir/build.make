# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\mingw64\bin\cmake.exe

# The command to remove a file.
RM = C:\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG

# Include any dependencies generated for this target.
include CMakeFiles/SpaceCraft_Game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SpaceCraft_Game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SpaceCraft_Game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SpaceCraft_Game.dir/flags.make

CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/ACCvector.cpp
CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\ACCvector.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\ACCvector.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\ACCvector.cpp

CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\ACCvector.cpp > CMakeFiles\SpaceCraft_Game.dir\src\ACCvector.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\ACCvector.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\ACCvector.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/Enemy.cpp
CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\Enemy.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\Enemy.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Enemy.cpp

CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Enemy.cpp > CMakeFiles\SpaceCraft_Game.dir\src\Enemy.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Enemy.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\Enemy.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/Functions.cpp
CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\Functions.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\Functions.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Functions.cpp

CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Functions.cpp > CMakeFiles\SpaceCraft_Game.dir\src\Functions.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Functions.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\Functions.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/LaserShot.cpp
CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\LaserShot.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\LaserShot.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\LaserShot.cpp

CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\LaserShot.cpp > CMakeFiles\SpaceCraft_Game.dir\src\LaserShot.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\LaserShot.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\LaserShot.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/LTexture.cpp
CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\LTexture.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\LTexture.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\LTexture.cpp

CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\LTexture.cpp > CMakeFiles\SpaceCraft_Game.dir\src\LTexture.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\LTexture.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\LTexture.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/Math_Functions.cpp
CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\Math_Functions.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\Math_Functions.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Math_Functions.cpp

CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Math_Functions.cpp > CMakeFiles\SpaceCraft_Game.dir\src\Math_Functions.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Math_Functions.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\Math_Functions.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/Planet.cpp
CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\Planet.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\Planet.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Planet.cpp

CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Planet.cpp > CMakeFiles\SpaceCraft_Game.dir\src\Planet.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\Planet.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\Planet.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/SpaceCraft.cpp
CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\SpaceCraft.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\SpaceCraft.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\SpaceCraft.cpp

CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\SpaceCraft.cpp > CMakeFiles\SpaceCraft_Game.dir\src\SpaceCraft.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\SpaceCraft.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\SpaceCraft.cpp.s

CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/src/UI.cpp
CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\src\UI.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\src\UI.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\UI.cpp

CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\UI.cpp > CMakeFiles\SpaceCraft_Game.dir\src\UI.cpp.i

CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\src\UI.cpp -o CMakeFiles\SpaceCraft_Game.dir\src\UI.cpp.s

CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o: CMakeFiles/SpaceCraft_Game.dir/flags.make
CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o: CMakeFiles/SpaceCraft_Game.dir/includes_CXX.rsp
CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o: C:/Users/Domin/Desktop/SpaceCraft_Game_emscripten/Space_ship.cpp
CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o: CMakeFiles/SpaceCraft_Game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o -MF CMakeFiles\SpaceCraft_Game.dir\Space_ship.cpp.o.d -o CMakeFiles\SpaceCraft_Game.dir\Space_ship.cpp.o -c C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\Space_ship.cpp

CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.i"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\Space_ship.cpp > CMakeFiles\SpaceCraft_Game.dir\Space_ship.cpp.i

CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.s"
	C:\Users\Domin\emsdk\upstream\emscripten\em++.bat $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\Space_ship.cpp -o CMakeFiles\SpaceCraft_Game.dir\Space_ship.cpp.s

# Object files for target SpaceCraft_Game
SpaceCraft_Game_OBJECTS = \
"CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o" \
"CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o"

# External object files for target SpaceCraft_Game
SpaceCraft_Game_EXTERNAL_OBJECTS =

SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/ACCvector.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/Enemy.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/Functions.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/LaserShot.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/LTexture.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/Math_Functions.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/Planet.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/SpaceCraft.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/src/UI.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/Space_ship.cpp.o
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/build.make
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/objects1.rsp
SpaceCraft_Game.html: CMakeFiles/SpaceCraft_Game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable SpaceCraft_Game.html"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SpaceCraft_Game.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SpaceCraft_Game.dir/build: SpaceCraft_Game.html
.PHONY : CMakeFiles/SpaceCraft_Game.dir/build

CMakeFiles/SpaceCraft_Game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SpaceCraft_Game.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SpaceCraft_Game.dir/clean

CMakeFiles/SpaceCraft_Game.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG C:\Users\Domin\Desktop\SpaceCraft_Game_emscripten\buildG\CMakeFiles\SpaceCraft_Game.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SpaceCraft_Game.dir/depend

