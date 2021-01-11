@echo off
mode con cols=40 lines=22
title Stop !
batbox /h 0
cd %~dp0Musiques
start sound1.vbs
cd %~dp0
Setlocal Enabledelayedexpansion
color 07
echo.
echo.
echo      ษออออออออออออออออออออออออออออป
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ
echo      บ                            บ 
echo      ศออออออออออออออออออออออออออออผ 
echo.
batbox /g 8 15 /c 0x03 /d " Vous n'avez pas l'argent" /g 8 17 /c 0x03 /d "       n" /a 130 /d "c" /a 130 /d "ssaire..
insertbmp /p:"%~dp0Images\Interface\sprite1.bmp" /x:82 /y:42 /z:50

pause >nul
exit