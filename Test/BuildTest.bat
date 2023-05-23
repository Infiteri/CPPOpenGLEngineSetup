REM Build script for engine
@ECHO OFF
SetLocal EnableDelayedExpansion

REM Get a list of all the .c files.
SET cFilenames=
FOR /R %%f in (*.cpp) do (
    SET cFilenames=!cFilenames! %%f
)

SET assembly=Test
SET compilerFlags=-g
SET includeFlags=-I../Engine/Source
SET linkerFlags= -lEngine -L../bin
SET defines=

g++ %defines% %compilerFlags% %cFilenames% %includeFlags% %linkerFlags% -o ../bin/%assembly%
