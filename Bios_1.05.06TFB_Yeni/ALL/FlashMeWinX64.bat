@echo off

@set BIOS.ROM=BIOS.ALL
@set BIOS2.ROM=87HPTFB.506

:: Flash ME

fptW64 -f %BIOS.ROM% -l 0x200000 -y
if errorlevel 1 goto End

AFUwinx64.exe %BIOS2.ROM% /p /b /n
rem AFUwinx64.exe /s /shutdown

:End
