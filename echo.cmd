@echo off
Setlocal Enabledelayedexpansion
color 07

 set j=0
 set tempsj=1
 goto :music

 rem ------- Set journée
 
:aa

 for /f "tokens=1,2,3 delims=:" %%a in ("!time!") do (
  set hh=%%a
  set m=%%b
  set ss=%%c
  set ss=!ss:~0,2!
 )
 
 If !m!==08 set m=8
 If !m!==09 set m=9
 
 set /a mm=!m!+!tempsj!

 If !mm! GTR 59 ( 
  set /a hh=!h!+1
  set /a mm-=60 
 )

 If !mm! LSS 10 set mm=0!mm!

 rem ------- Boucle

:a
 for /f "tokens=1,2,3 delims=:" %%a in ("!time!") do (
  set h=%%a
  set m=%%b
  set s=%%c
  set s=!s:~0,2!
 )

 echo !h!:!m!:!s!
 batbox /w 500
 
 If !h!:!m!:!s!==!hh!:!mm!:!ss! goto b

 
 goto a

 rem ------- Nouvelle Journée

 :b
 set /a j+=1
 echo bravooooooo : %j%
 start
 goto aa


 rem ------- Code Musique

:music
echo(
Set "MusicPath=%~dp0Musique1.mp3"
::*******************************************************************************
Call :Play_Music
goto aa

:Play_Music
Set "VBS_MUSIC=%temp%\DJBuzzRadio.vbs"
Call :PlayLoop "%MusicPath%" "%VBS_MUSIC%"
Start "" "%VBS_MUSIC%"
Exit /b
::**************************************************************
:PlayLoop
(
    echo Play "%~1"
    echo Sub Play(MusicPath^)
    echo    Dim Sound
    echo    Set Sound = CreateObject("WMPlayer.OCX"^)
    echo    Sound.URL = MusicPath
    echo    Sound.settings.volume = 100
    echo    Sound.Controls.play
    echo    Sound.settings.setMode "loop", True
    echo    Sound.Controls.play
    echo    While Sound.playState ^<^> 1
    echo        WScript.Sleep 100
    echo    Wend
    echo End Sub
)>%~2
exit /b
::**************************************************************