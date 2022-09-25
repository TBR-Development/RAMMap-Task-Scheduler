ECHO.
ECHO  Please select an option from the Menu
echo       [F-J] or select 'Q' to quit.
ECHO.
ECHO ****************************************
ECHO *       PRESS ANY KEY TO CONTINUE      *
ECHO ****************************************
ECHO.

PAUSE > NUL
GOTO DELETE_MENU

:Selection1

GOTO CREATE_MENU

:Selection2

GOTO DELETE_MENU

:SelectionA

SCHTASKS /CREATE /TN "Empty Standby List" /TR "\"%EXE_PATH%\" -Et" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
PAUSE > NUL
GOTO CREATE_MENU

:SelectionB

SCHTASKS /CREATE /TN "Priority 0 Standby List" /TR "\"%EXE_PATH%\" -E0" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
PAUSE > NUL
GOTO CREATE_MENU

:SelectionC

SCHTASKS /CREATE /TN "Working Sets" /TR "\"%EXE_PATH%\" -Ew" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
PAUSE > NUL
GOTO CREATE_MENU

:SelectionD

SCHTASKS /CREATE /TN "Working System Sets" /TR "\"%EXE_PATH%\" -Es" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
PAUSE > NUL
GOTO CREATE_MENU

:SelectionE

SCHTASKS /CREATE /TN "Empty Modified Page List" /TR "\"%EXE_PATH%\" -Em" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
PAUSE > NUL
GOTO CREATE_MENU

:SectionF /DELETE /TN "Empty Standby List" /F /HRESULT
PAUSE > NUL
GOTO DELETE_MENU

:SectionF /DELETE /TN "Empty Priority 0 Standby List" /F /HRESULT
PAUSE
GOTO DELETE_MENU

:SectionF /DELETE /TN "Empty Modified Page List" /F /HRESULT
PAUSE > NUL
GOTO DELETE_MENU

:SectionF /DELETE /TN "Empty Working Sets" /F /HRESULT
PAUSE > NUL
GOTO DELETE_MENU

:SectionF /DELETE /TN "Empty System Working Sets" /F /HRESULT
PAUSE > NUL
GOTO DELETE_MENU

:Quit
CLS

ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE>NUL
EXIT
