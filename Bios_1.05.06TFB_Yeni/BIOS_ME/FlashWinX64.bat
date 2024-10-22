@echo off

@set BIOS.ROM=87HPTFB.506
rem ME_Update
FWUpdLcl64 -f ME_D0.bin -allowsv

AFUwinx64.exe %BIOS.ROM% /p /b /n 