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
if exist nivtemp.txt set /p a=<nivtemp.txt
set a=!a: =!

batbox /g 8 15 /c 0x03 /d "  Niveau !a! requis pour" /g 8 17 /c 0x03 /d "effectuer cette action ^!"

insertbmp /p:"%~dp0Images\Interface\sprite3.bmp" /x:87 /y:38 /z:66
del /q "nivtemp.txt"
pause >nul
exit
