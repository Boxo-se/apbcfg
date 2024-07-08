@echo OFF
color 03
title APB CFG LOADER
ECHO _________________________________________________________________________________
ECHO Welcome to Box's Config loader. Go read the readme.txt! 
Echo Normal config :1
Echo No stutter config :2
Echo No stutter config + UI :3
ECHO _________________________________________________________________________________
set /p load=
if %load%==1 (
echo Patching normal config
xcopy "enter file path to boxcfg"\cfg\Box_CFG1.3 "enter file path to steam common" /s /e /u /r /y /q
)
if %load%==2 (
echo Patching no stutter config
xcopy "enter file path to boxcfg"\Box_CFG1.3stutter "enter file path to steam common" /s /e /u /r /y /q
)
if %load%==3 (
echo Patching no stutter config
xcopy "enter file path to boxcfg"\Box_CFG1.3UI "enter file path to steam common" /s /e /u /r /y /q
)

echo all OK
color 02

ECHO _________________________________________________________________________________
ECHO Time to launch
Echo Launch with steam :1
Echo Launch without steam :2
ECHO _________________________________________________________________________________

set /p str=
if %str%==1 (
echo Launching with steam
start "enter path to apb.lnk with the launch options you want"
)
if %str%==2 (
echo Launching without steam
start "enter path to apb.lnk with the launch options you want"
)




ECHO _________________________________________________________________________________
ECHO Starting APB
ECHO _________________________________________________________________________________

timeout /t 5 /nobreak
