@echo off
mode con cols=40 lines=21
title Stop !
cd %~dp0Musiques
start sound1.vbs
cd %~dp0
batbox /h 0
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
echo      ศออออออออออออออออออออออออออออผ 
echo.
batbox /g 9 12 /c 0x03 /d " Vous devez rembourcer" /g 8 14 /d "votre pr" /a 136 /d "t actuel. Avant" /g 8 16 /c 0x03 /d " d'empreinter " /a 133 /d " nouveau."
insertbmp /p:"%~dp0Images\Interface\sprite2.bmp" /x:106 /y:37 /z:50

pause >nul
exit