::   ######### Windows BATCH Scripting ##############
@ECHO OFF

:::: NOTES
:: Double %% for .bat files, single % for CLI

:::: User Interaction
ECHO REM Output to Screen
PAUSE REM Wait for key press
CLS REM Clear Screen
CHOICE REM Select from list
NUL REM Suppress output

:::: Redirection
> REM Redirects stdout of command into a new file
>> REM Appends stdout of command to existing file
2> REM Redirects stderr of command to a new file
| REM Pipe, sends output of command to another program that accepts it on standard in 

:::: VARIABLES
SET REM Sets a variable to a particular value
%varname% REM references the variable
!var! REM force a replacement of a variable

Echo The Last Error Number Was %ERRORLEVEL%

:::: LOOPS
:: Multiple Files - perform one command on each file
FOR %a IN (file(s)) DO (commands)

FOR %a IN (myscript.bat ToDo.txt file.tmp) DO (
    IF EXIST %a (echo File Found: %a) ELSE (echo File NOT Found: %a)
)

:: Multiple Directories - perform one command on each directory
FOR /D %a IN {dirpath} DO (commands)

FOR /D %a in ("V*") DO (echo V Directory Found: %a)

:: Multiple Lines IN a File - perform one command for each line
FOR /F %a IN (filename) DO (commands)

:: Run a Command Multiple Times - perform command many times
FOR /L %a IN (x, y, z) DO (commands)