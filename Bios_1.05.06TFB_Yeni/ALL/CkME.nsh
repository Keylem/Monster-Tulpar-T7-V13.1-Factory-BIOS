@echo off
  			    
#Tool Name  OPTION ME(TXE) VERSION     [OPTION2]-C CHECK -Y ALWAYS MESET				    
CkMEver.efi -mecmp 0011.0008.0050.3434 -Y		    
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
 FLASH.nsh
 goto end       		    
			    
				    
:meset 

 MeSet.efi 			    
 goto end   

:lerror
echo Tool Report Get Me Version Error	
 goto end   
		    
:end    			    
@echo -on       		    


