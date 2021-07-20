@echo off

setlocal enabledelayedexpansion

if [%1]==[] goto :noarg

set "gamedir=C:\Games\Secret World Legends"

"%~dp0fdbuild\fdbuild.exe" "%~1" ^
    -compiler "%~dp0mtasc" ^
    -swfmill "%~dp0swfmill" ^
    -cp "%~dp0Sources" ^
    -cp "%~dp0CLIK" ^
    -notrace

if !errorlevel! neq 0 goto end
cd "%~dp1"

for %%f in (bin\*.swf) do set projectname=%%~nf
set "moddir=%gamedir%\Data\Gui\Custom\Flash\%projectname%\"

xcopy "bin\*.*" "%moddir%" /y /I >NUL
xcopy "src\mod\*.*" "%moddir%" /y /I >NUL
xcopy "*.md" "%moddir%" /y /I >NUL

:end
if "%2"=="pause" pause
exit /b !errorlevel!

:noarg
echo Usage: build.bat ^<path of .as2proj file^> [pause]
exit /b 1