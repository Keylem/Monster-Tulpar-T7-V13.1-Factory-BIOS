@echo -off

set ME_D0.bin

#Tool Name  OPTION ME(TXE) VERSION     [OPTION2]-C CHECK -Y ALWAYS MESET				    
CkMEver.efi -mecmp 0011.0008.0050.3434 -C		    
if %Lasterror% == 0 then      
 goto flash       		    
endif  

if %Lasterror% == 1 then      
 goto meset       		    
endif 

if %Lasterror% == 2 then      
 goto meset       		    
endif 
	
if %Lasterror% == 3 then      
 goto lerror       		    
endif 
			    
:flash  			    
BIOS.nsh
 goto end       		    
			    
				    
:meset
FWUpdLcl.efi -f %ME_FW% -ALLOWSV
BIOS.nsh
 goto end   

:lerror
echo Tool Report Get Me Version Error	
 goto end   
		    
:end    			    
@echo -on       		    


