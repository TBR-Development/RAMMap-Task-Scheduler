@ECHO OFF
SET EXE_PATH=
MODE 49,20
CLS

:MAIN_MENU
COLOR 17
TITLE=RAMMAP - MAIN MENU
CLS

ECHO.
ECHO *************************************************
ECHO *             RAMMAP TASK SCHEDULER             *
ECHO *************************************************
ECHO.
ECHO  1.  Create Task
ECHO  2.  Delete Task
ECHO.
ECHO *************************************************
ECHO *               PRESS 'Q' TO QUIT               *
ECHO *************************************************
ECHO.

SET INPUT=
SET /P INPUT=Please select a number:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='Q' GOTO Quit

COLOR 47
TITLE=INVALID INPUT - RAMMAP TASK SCHEDULER
CLS

ECHO.
ECHO *************************************************
ECHO *                 INVALID INPUT                 *
ECHO *************************************************
ECHO.
ECHO       Please select an option from the Menu
echo          [A-E] or select 'Q' to quit.
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.

PAUSE > NUL
GOTO MAIN_MENU

:CREATE_MENU
COLOR 17
TITLE=RAMMAP - CREATE TASK
CLS

ECHO.
ECHO *************************************************
ECHO *             RAMMAP TASK SCHEDULER             *
ECHO *************************************************
ECHO.
ECHO  A.  Empty Standby List
ECHO  B.  Empty Priority 0 Standby List
ECHO  C.  Empty Working Sets
ECHO  D.  Empty System Working Sets
ECHO  E.  Empty Modified Page List 
ECHO.
ECHO  0.  Return to the Main Menu
ECHO.
ECHO *************************************************
ECHO *               PRESS 'Q' TO QUIT               *
ECHO *************************************************
ECHO.

SET INPUT=
SET /P INPUT=Please select a letter:

IF /I '%INPUT%'=='A' GOTO SelectionA
IF /I '%INPUT%'=='B' GOTO SelectionB
IF /I '%INPUT%'=='C' GOTO SelectionC
IF /I '%INPUT%'=='D' GOTO SelectionD
IF /I '%INPUT%'=='E' GOTO SelectionE
IF /I '%INPUT%'=='Q' GOTO Quit
IF /I '%INPUT%'=='0' GOTO MAIN_MENU

COLOR 47
TITLE=RAMMAP - INVALID INPUT
CLS

ECHO.
ECHO *************************************************
ECHO *                 INVALID INPUT                 *
ECHO *************************************************
ECHO.
ECHO       Please select an option from the Menu
echo          [A-E] or select 'Q' to quit.
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.

PAUSE>NUL
GOTO CREATE_MENU

:DELETE_MENU
COLOR 17
TITLE=RAMMAP - DELETE TASK
CLS

ECHO.
ECHO *************************************************
ECHO *             RAMMAP TASK SCHEDULER             *
ECHO *************************************************
ECHO.
ECHO  F.  Empty Standby List
ECHO  G.  Empty Priority 0 Standby List
ECHO  H.  Empty Working Sets
ECHO  I.  Empty System Working Sets
ECHO  J.  Empty Modified Page List
ECHO.
ECHO  0.  Return to the Main Menu
ECHO.
ECHO *************************************************
ECHO *               PRESS 'Q' TO QUIT               *
ECHO *************************************************
ECHO.

SET INPUT=
SET /P INPUT=Please select a letter:

IF /I '%INPUT%'=='F' GOTO SelectionF
IF /I '%INPUT%'=='G' GOTO SelectionG
IF /I '%INPUT%'=='H' GOTO SelectionH
IF /I '%INPUT%'=='I' GOTO SelectionI
IF /I '%INPUT%'=='J' GOTO SelectionJ
IF /I '%INPUT%'=='Q' GOTO Quit
IF /I '%INPUT%'=='0' GOTO MAIN_MENU

COLOR 47
TITLE=RAMMAP - INVALID INPUT
CLS

ECHO.
ECHO *************************************************
ECHO *                 INVALID INPUT                 *
ECHO *************************************************
ECHO.
ECHO       Please select an option from the Menu
echo          [A-E] or select 'Q' to quit.
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.

PAUSE>NUL
GOTO DELETE_MENU

:Selection1

GOTO CREATE_MENU

:Selection2

GOTO DELETE_MENU

:SelectionA

SCHTASKS /CREATE /TN "Empty Standby List" /TR "\"%EXE_PATH%\" -Et" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO CREATE_MENU

:SelectionB

SCHTASKS /CREATE /TN "Priority 0 Standby List" /TR "\"%EXE_PATH%\" -E0" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULTHRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO CREATE_MENU

:SelectionC

SCHTASKS /CREATE /TN "Working Sets" /TR "\"%EXE_PATH%\" -Ew" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO CREATE_MENU

:SelectionD

SCHTASKS /CREATE /TN "Working System Sets" /TR "\"%EXE_PATH%\" -Es" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO CREATE_MENU

:SelectionE

SCHTASKS /CREATE /TN "Empty Modified Page List" /TR "\"%EXE_PATH%\" -Em" /RL "HIGHEST" /SC MINUTE /MO 5 /RU "ADMINISTRATORS" /F /HRESULTHRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO CREATE_MENU

:SelectionF

SCHTASKS /DELETE /TN "Empty Standby List" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO DELETE_MENU

:SelectionG

SCHTASKS /DELETE /TN "Empty Priority 0 Standby List" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO DELETE_MENU

:SelectionH

SCHTASKS /DELETE /TN "Empty Modified Page List" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO DELETE_MENU

:SelectionI

SCHTASKS /DELETE /TN "Empty Working Sets" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO DELETE_MENU

:SelectionJ

SCHTASKS /DELETE /TN "Empty System Working Sets" /F /HRESULT
ECHO.
ECHO *************************************************
ECHO *           PRESS ANY KEY TO CONTINUE           *
ECHO *************************************************
ECHO.
PAUSE>NUL
GOTO DELETE_MENU

:Quit
CLS

ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE>NUL
EXIT
