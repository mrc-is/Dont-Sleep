@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
mode con:cols=91 lines=17
TITLE Close this window to END
REM ..........locate wmplayer
set wmp="C:\Program Files\Windows Media Player\wmplayer.exe"

:loop
CLS
REM ..........Chk Internet
Ping www.google.nl -n 1 -w 1000 >NUL
if errorlevel 1 (msg "" BYE!&EXIT) else (set internet=)

REM ascii art (replace | with ^|)
echo.
echo.
echo	 _____  _                                  _    _      _
echo	/  __ \^| ^|                                ^| ^|  ^| ^|    (_)
echo	^| /  \/^| ^|  ___   ___   ___               ^| ^|_ ^| ^|__   _  ___
echo	^| ^|    ^| ^| / _ \ / __^| / _ \              ^| __^|^| '_ \ ^| ^|/ __^|
echo	^| \__/\^| ^|^| (_) ^|\__ \^|  __/  _   _   _   ^| ^|_ ^| ^| ^| ^|^| ^|\__ \
echo	 \____/^|_^| \___/ ^|___/ \___^| (_) (_) (_)   \__^|^|_^| ^|_^|^|_^|^|___/
echo.	
echo.	
echo	 _    _  _____  _   _ ______  _____  _    _               _                             _
echo	^| ^|  ^| ^|^|_   _^|^| \ ^| ^|^|  _  \^|  _  ^|^| ^|  ^| ^|             ^| ^|                           ^| ^|
echo	^| ^|  ^| ^|  ^| ^|  ^|  \^| ^|^| ^| ^| ^|^| ^| ^| ^|^| ^|  ^| ^|             ^| ^|_   ___     ___  _ __    __^| ^|
echo	^| ^|/\^| ^|  ^| ^|  ^| . ` ^|^| ^| ^| ^|^| ^| ^| ^|^| ^|/\^| ^|             ^| __^| / _ \   / _ \^| '_ \  / _` ^|
echo	\  /\  / _^| ^|_ ^| ^|\  ^|^| ^|/ / \ \_/ /\  /\  /  _   _   _  ^| ^|_ ^| (_) ^| ^|  __/^| ^| ^| ^|^| (_^| ^|
echo	 \/  \/  \___/ \_^| \_/^|___/   \___/  \/  \/  (_) (_) (_)  \__^| \___/   \___^|^|_^| ^|_^| \__,_^|
echo.
echo.

start /min "" %wmp% /play /close "http://image.mrcsurvey.com/custloads/271723802/archive/Silent.wav"
REM ..........wait until video end (10sec)
ping localhost -n 8 >nul
GOTO loop

rem Tasklist /FI "Imagename eq wmplayer.exe" 2>NUL | find /I /N "wmplayer.exe" >NUL
rem If "%ERRORLEVEL%"=="0" (taskkill /f /im wmplayer.exe>NUL)