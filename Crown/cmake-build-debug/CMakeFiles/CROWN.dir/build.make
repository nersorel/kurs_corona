# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\matin\Desktop\Crown

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\matin\Desktop\Crown\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\CROWN.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\CROWN.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\CROWN.dir\flags.make

CMakeFiles\CROWN.dir\main.cpp.obj: CMakeFiles\CROWN.dir\flags.make
CMakeFiles\CROWN.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\matin\Desktop\Crown\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CROWN.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\CROWN.dir\main.cpp.obj /FdCMakeFiles\CROWN.dir\ /FS -c C:\Users\matin\Desktop\Crown\main.cpp
<<

CMakeFiles\CROWN.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CROWN.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\CROWN.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\matin\Desktop\Crown\main.cpp
<<

CMakeFiles\CROWN.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CROWN.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\CROWN.dir\main.cpp.s /c C:\Users\matin\Desktop\Crown\main.cpp
<<

# Object files for target CROWN
CROWN_OBJECTS = \
"CMakeFiles\CROWN.dir\main.cpp.obj"

# External object files for target CROWN
CROWN_EXTERNAL_OBJECTS =

CROWN.exe: CMakeFiles\CROWN.dir\main.cpp.obj
CROWN.exe: CMakeFiles\CROWN.dir\build.make
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\sfml-audio-s-d.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\sfml-network-s-d.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\sfml-graphics-s-d.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\sfml-window-s-d.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\sfml-system-s-d.lib
CROWN.exe: vemath.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\openal32.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\vorbisfile.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\vorbisenc.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\vorbis.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\ogg.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\flac.lib
CROWN.exe: C:\Libraries\SFML-2.5.1\lib\freetype.lib
CROWN.exe: CMakeFiles\CROWN.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\matin\Desktop\Crown\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CROWN.exe"
	"C:\Program Files\JetBrains\CLion 2021.1.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\CROWN.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\CROWN.dir\objects1.rsp @<<
 /out:CROWN.exe /implib:CROWN.lib /pdb:C:\Users\matin\Desktop\Crown\cmake-build-debug\CROWN.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  C:\Libraries\SFML-2.5.1\lib\sfml-audio-s-d.lib C:\Libraries\SFML-2.5.1\lib\sfml-network-s-d.lib C:\Libraries\SFML-2.5.1\lib\sfml-graphics-s-d.lib C:\Libraries\SFML-2.5.1\lib\sfml-window-s-d.lib C:\Libraries\SFML-2.5.1\lib\sfml-system-s-d.lib vemath.lib C:\Libraries\SFML-2.5.1\lib\openal32.lib C:\Libraries\SFML-2.5.1\lib\vorbisfile.lib C:\Libraries\SFML-2.5.1\lib\vorbisenc.lib C:\Libraries\SFML-2.5.1\lib\vorbis.lib C:\Libraries\SFML-2.5.1\lib\ogg.lib C:\Libraries\SFML-2.5.1\lib\flac.lib ws2_32.lib winmm.lib gdi32.lib OpenGL32.lib C:\Libraries\SFML-2.5.1\lib\freetype.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\CROWN.dir\build: CROWN.exe

.PHONY : CMakeFiles\CROWN.dir\build

CMakeFiles\CROWN.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CROWN.dir\cmake_clean.cmake
.PHONY : CMakeFiles\CROWN.dir\clean

CMakeFiles\CROWN.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\matin\Desktop\Crown C:\Users\matin\Desktop\Crown C:\Users\matin\Desktop\Crown\cmake-build-debug C:\Users\matin\Desktop\Crown\cmake-build-debug C:\Users\matin\Desktop\Crown\cmake-build-debug\CMakeFiles\CROWN.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\CROWN.dir\depend

