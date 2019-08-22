@echo off

for /f "delims=" %%i in ('"cscript getDateTime.vbs //nologo"') do (
	echo %%i
	if "%1"=="192.168.16.236" (
		rem plink -telnet -l admin -pw  %1 clock set %%i;sh clock;exit;
		echo %%i
	)else (
		echo y | plink -ssh -l admin -pw %2 %1 clock set %%i;sh clock;exit;
	)
)

echo "%1 done."
echo ""