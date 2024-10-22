@echo -off

set BIOSROM 87HPTFB.506

#delete old MSDM file
if exist msdm.bin then
 del msdm.bin
endif

# save MSDM
gmsdmx64

if not %Lasterror% == 0 then
 goto end
endif

# update SBIOS
afuefix64 %BIOSROM% /p /b /n  

if not %Lasterror% == 0 then
 goto end
endif

# restore MSDM
if exist msdm.bin then
 oaidefix64 msdm.bin /oa
if not %Lasterror% == 0 then
  goto end
endif
 del msdm.bin
endif

# shutdown system
#afuefix64 /s /shutdown
uForcePowerOff
:end
@echo -on