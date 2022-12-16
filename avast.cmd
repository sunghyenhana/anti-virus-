@echo off
set %username% == 
cd C:\users\%username%\desktop\

echo avast program scan..
timeout -t 3 -nobreak >nul

cls
if exist avast.png goto ne
if not exist avast.png goto errors.png

:ne

if exist error.avast.png goto end scan
if not exist error.avast.png goto errors.png

:end scan

if exist exit.bat goto e
if not exist exit.bat goto error.program

:e

title avast
echo virus scan....
if exist *.fun goto:u >>nul
if not exist *.fun goto:e >>nul
cls
 
:u
set do=avast.png
ren *.fun *.bat >>nul
cls
if exist %do% goto ogog
if not exist %do% goto errors.png

:errors.png
title ERROR:PNGIMAGE
color 4
cmdbkg error.avast.png
echo PNG ERROR 404 :(
echo we not found a image.
echo please re-install a file or read a readme.txt
echo but, we blocked a virus.
pause >nul
exit

:ogog
cmdbkg avast.png
echo ==============================
echo PROTECT!
echo.
echo WE BLOCKED VIRUS!
echo AND VIRUS FILE DECRYPTED!
echo next(scan):1
echo input a code(virus removes.):2
echo exit(3)
echo ==============================
set x=default
set /p x=

if %x%==1 goto t
if %x%==2 goto in 
if %x%==3 goto scandd

:scandd
if exist exit.bat goto ex
if not exist exit.bat goto error.program

:error.program
cls
title ERROR:PROGRAMS
cmdbkg error.avast.png
color 4
echo program error :(
echo we not found a EXIT PROGRAM. 
echo please re-install a programs.
pause>nul
exit

:ex
echo shutdowning a block.virus...
timeout -t 3 -nobreak >nul
cls
echo time out shutdowning...
timeout -t 3 -nobreak >nul
call exit.bat

:in
cls
echo INPUT A serial Code.
set s=default
set /p s= 

if %s%== 1234-5678 goto D
if %s%== 451-5542-4359455-432456-433845-6665454-98875-77889-4224523 goto D
if %s%== 8521-217575-27527-2785278-575474-55777882-7575-47887-28554-55785 goto D
if %s%== 74877877845-457457-455754646-44545454-545564578-46478-5454-45454 goto D

:error
cls
echo OOPS!
echo NOT correspond serial Code.
echo please one more input a serial code!
pause
goto in

:d
cls
echo correspond!
echo we delete a virus!
pause
cd C:\users\hanse\desktop\
ren jigsw.ransomware.cmd *.avast.shield.encrypt
cls
echo encrypted a virus!
pause
exit


:t
cls
echo we're test/scan virus.
pause
cls
if exist jigsw.ransomware.cmd goto :op
if not exist jigsw.ransomware.cmd goto :er

:op
cls
echo ==================================
echo oops,
echo we detected virus by ransomware for your desktop.
echo please delete virus.
echo file name: "jigsw.ransomware.win32.trojan.fun"
echo ==================================
pause
cls
echo ==================================
echo 옵스,
echo 당신의 컴퓨터 화면에서 바이러스가 감지 되었습니다.
echo 바이러스를 제거 해주세요.
echo 파일 이름: "jigsw.ransomware.win32.trojan.fun"
echo ==================================
pause>nul
exit

:er
cls
echo yes, we not detected virus!
pause
exit

