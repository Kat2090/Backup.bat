@echo off

REM | Exemplo: C:\Users\AMD\Downloads\Downloads\Uh\JoJo\

:menu
Title: Backup

echo.
echo.
echo                     # # # # # # # # # # # # # #
echo                     #              Menu              #
echo                     #                                     #
echo                     #           1 - BackUp         #
echo                     #           2 - Help              #
echo                     #           0 - Exit                #
echo                     #                                     #
echo                     # # # # # # # # # # # # # #
echo.
echo.

set /p Response=Put the Number.

if %Response% == 1 (cls & goto One)
if %Response% == 2 (cls & goto Two)
if %Response% == 0 (exit)

:One
Color 2
echo                 Exemple:   C:\Users\someone\Downloads\Downloads\JoJo\
set /p locale=.                 Please put the locale to Copy items inside: 
set /p Response=.            You wan't to copy hide archives? (Y, N)
if %Response% equ Y (cls & goto Y)
if %Response% equ N (cls & goto N)

:Y
echo         Making backup...
if not exist C:\Users\%username%\Desktop\Backup (
md Backup
)

XCOPY %locale%*.* C:\Users\%username%\Desktop\Backup /D /E /Y /C /K /H

msg * " End of Backup ! "
pause
exit

:N
echo         Making backup...
if not exist C:\Users\%username%\Desktop\Backup (
md Backup
)

XCOPY %locale%*.* C:\Users\%username%\Desktop\Backup /D /E /Y /C /K

msg * " End of Backup ! "
pause
exit

:Two
Color 8
echo                                      Rules/Informations/Help
echo.
echo.
echo          1 - To this .Batch work you need to put he in Desktop. (Workspace)
echo.
echo          2- If you don't put a valid directory it will obviously give an error.
echo.
echo                                 Any error report to ! Kat望み#2090
echo.
echo.
pause