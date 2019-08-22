@echo off

for /f "delims=" %%j in ('"cscript genPassword.vbs //nologo"') do (
	rem echo %%j
	set pwd=%%j
)

for /f "tokens=*" %%a in (fastChangeClockIps.txt) do (
  echo line=%%a
  call fastChangeClock.bat %%a %pwd%
)

set pwd=

pause