@echo off

@set BIOS.ROM=BIOS.ALL
@set BIOS2.ROM=87HPTFB.506

:: Flash ME

fptW -f %BIOS.ROM% -l 0x200000 -y
if errorlevel 1 goto End

AFUwin.exe %BIOS2.ROM% /p /b /n
rem AFUwin.exe /s /shutdown

:End
