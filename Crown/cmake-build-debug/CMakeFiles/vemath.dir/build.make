# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\matin\Desktop\COVID19-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\matin\Desktop\COVID19-master\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\vemath.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\vemath.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\vemath.dir\flags.make

CMakeFiles\vemath.dir\vemath.cpp.obj: CMakeFiles\vemath.dir\flags.make
CMakeFiles\vemath.dir\vemath.cpp.obj: ..\vemath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\matin\Desktop\COVID19-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vemath.dir/vemath.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\vemath.dir\vemath.cpp.obj /FdCMakeFiles\vemath.dir\vemath.pdb /FS -c C:\Users\matin\Desktop\COVID19-master\vemath.cpp
<<

CMakeFiles\vemath.dir\vemath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vemath.dir/vemath.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\vemath.dir\vemath.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\matin\Desktop\COVID19-master\vemath.cpp
<<

CMakeFiles\vemath.dir\vemath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vemath.dir/vemath.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\vemath.dir\vemath.cpp.s /c C:\Users\matin\Desktop\COVID19-master\vemath.cpp
<<

# Object files for target vemath
vemath_OBJECTS = \
"CMakeFiles\vemath.dir\vemath.cpp.obj"

# External object files for target vemath
vemath_EXTERNAL_OBJECTS =

vemath.lib: CMakeFiles\vemath.dir\vemath.cpp.obj
vemath.lib: CMakeFiles\vemath.dir\build.make
vemath.lib: CMakeFiles\vemath.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\matin\Desktop\COVID19-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library vemath.lib"
	$(CMAKE_COMMAND) -P CMakeFiles\vemath.dir\cmake_clean_target.cmake
	C:\PROGRA~2\MICROS~2\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /lib /nologo /machine:X86 /out:vemath.lib @CMakeFiles\vemath.dir\objects1.rsp 

# Rule to build all files generated by this target.
CMakeFiles\vemath.dir\build: vemath.lib

.PHONY : CMakeFiles\vemath.dir\build

CMakeFiles\vemath.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\vemath.dir\cmake_clean.cmake
.PHONY : CMakeFiles\vemath.dir\clean

CMakeFiles\vemath.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\matin\Desktop\COVID19-master C:\Users\matin\Desktop\COVID19-master C:\Users\matin\Desktop\COVID19-master\cmake-build-debug C:\Users\matin\Desktop\COVID19-master\cmake-build-debug C:\Users\matin\Desktop\COVID19-master\cmake-build-debug\CMakeFiles\vemath.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\vemath.dir\depend
