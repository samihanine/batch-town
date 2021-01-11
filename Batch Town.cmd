 @echo off
 mode con cols=149 lines=52
 Setlocal Enabledelayedexpansion
 color 07

:: ----------------------------------------------------------------------------------------------
REM NE SOURTOUT PAS CHANGER CETTE LIGNE DE CODE !!! ---------------------------------------------
 title Batch Town - by Bad_Code
REM CHANGER LE TITRE FAIT BUGER LE JEU ( SA MET FIN AU SYSTEME DE JOURNEE et a la musique ) -----
:: ----------------------------------------------------------------------------------------------
 
 taskkill /im wscript.exe /t /f >nul

 if defined __ goto :deb
 set __=.
 call %0 %* | darkbox
 set __=
 goto :eof
 
 :deb
 set "Path_Game=%appdata%\BatchTown\Save1"
   If not exist "!Path_Game!\" mkdir "!Path_Game!\"
 set "in=%~dp0"

 cd "!Path_Game!"
   If exist "tempp.ini" del /q "tempp.ini"
 cd "!in!"

 set "bb=call :algoecho"
 set "$allbb="
 set "$tempbb="


 rem ------
 call :DrawIni
 call :AlgoBatiment
 rem ------

 echo;/h 0

:introduction

 echo;-s
 
 echo;-n
 echo;-n
 
 echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                               ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ³                                 ³                           º                     º"
 echo;-dn "     º                     º                               ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                           º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     º                     º                                                                                             º                     º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 insertbmp /p:"%~dp0Images\Interface\noevent.bmp" /x:477 /y:164 /z:115

   echo;/g 57 35 /c 0x07 /a 16 /c 0x03 /d " Appuyer sur une touche pour commencer " /c 0x07 /a 17 /g 69 6 /c 0x07 /d "- " /c 0x03 /d "Batch Town" /c 0x07 /d " -" /g 14 5
 
 insertbmp /p:"%~dp0Images\Interface\bul2.bmp" /x:994 /y:40 /z:90
 insertbmp /p:"%~dp0Images\Interface\bul1.bmp" /x:70 /y:40 /z:90

 pause >nul

rem -------------------------------------------------------------------------------------------------------------------------

:debutb


 set idmaison=0
 set bym=m

 echo;-s
 color 07
 
 echo;-n
 echo;-n
 echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»                 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
 echo;-dn "     º                                            º                 º              º              º              º              º              º"
 echo;-dn "     º  Argent :                                  º                 º              º              º              º              º              º"
 echo;-dn "     º                                            º                 º   Acceuil    º    Ville     º   Revenus++  º   Boutique   º    Banque    º"
 echo;-dn "     º  - Xp - :                         Niv :    º                 º              º              º              º              º              º"
 echo;-dn "     º                                            º                 º              º              º              º              º              º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼                 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 call :testecls

 set "boupage=1"
 set "pageb=1"
 set "page=1"
 set "creepy=0"
 
 REM start "" "invisible.vbs"
 REM start "" "invisible0.vbs"
 REM start "" "echo;-ncmd"

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:acceuil

 echo;/g 72 5 /c 0x03 /d "Acceuil" /g 88 5 /c 0x07 /d "Ville" /g 102 5 /c 0x07 /d "Revenus++" /g 117 5 /c 0x07 /d "Boutique" /g 133 5 /c 0x07 /d "Banque" /c 0x07 /g 0 9

 echo;-n
 echo;-n
 echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
 echo;-dn "     º                                                                                                                                         º"
 echo;-dn "     º                                                                                                                                         º"
 echo;-dn "     º       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       º"
 echo;-dn "     º       ³                                                                              ³                                                  º"
 echo;-dn "     º       ³                                                                              ³                                                  º"
 echo;-dn "     º       ³                                                                              ³      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ³                                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      ³                                   ³       º"
 echo;-dn "     º                                                                                             ³                                   ³       º"
 echo;-dn "     º                                                                                             ³                                   ³       º"
 echo;-dn "     º       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿      ³                                   ³       º"
 echo;-dn "     º       ³              ³³                                                              ³      ³                                   ³       º"
 echo;-dn "     º       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       º"
 echo;-dn "     º                                                                                                                                         º"
 echo;-dn "     º                                                                                                                                         º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

rem -----------------

:setacc

 set min=0
 set moy=0
 set gra=0
 set tot=0

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%A in ("!Path_Game!\emplacement.ini") do (
  set det=%%D
  set det=!det: =!
  set idd=%%E
  set idd=!idd: =!

  If not "!det!"=="n" (
    If !idd!==2 set /a moy+=1
    If !idd!==3 set /a gra+=1
    set /a tot+=1
   )
 )
  
 set "s="
 set "ss="
 set "sss="
 set "ssss="

 If !tot! GTR 1 set "s=s"
 If !moy! GTR 1 set "sss=s"
 If !gra! GTR 1 set "ssss=s"

rem -----------------

 set popu=1
 
 for /f "usebackq tokens=1,2 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
   set ce=%%b
   If not !ce!==n set /a popu=!popu!+!e%%b_population!
 )

rem -----------------

 set "banc=0"

 for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c
  set c=!c: =!

  If not "!c!"=="n" ( set "banc=%%a"
    set "bbpret=!b!"
    set "bbjou=!c!"
  )
 )

 If not !banc!==0 echo;/g 101 30 /c 0x03 /a 16 /c 0x07 /d " Vous avez un" /c 0x03 /d " pr" /a 136 /d "t" /c 0x07 /d " de " /c 0x02 /d "!bbpret!$ " /c 0x07 /a 133 /c 0x07 /g 103 32 /d "rembourcer sous " /c 0x0E /d "!bbjou!" /c 0x07 /d " jours."

 If !banc!==0 echo;/g 101 30 /c 0x03 /a 16 /c 0x07 /d " Vous n'avez aucun" /c 0x03 /d " pr" /a 136 /d "t" /c 0x07 /d " bancaire " /c 0x07 /g 103 32 /a 133 /d " rembourcer."

rem -----------------

:goacc

 echo;/g 111 16 /c 0x07 /a 16 /c 0x03 /d " Param" /a 138 /d "tres " /c 0x07 /a 17 /g 114 20 /c 0x07 /a 16 /c 0x03 /d " Aide " /c 0x07 /a 17 /c 0x03 /g 15 45 /a 60 /d " Commande " /a 62 /c 0x0C /g 113 27 /d "- Dettes -" /g 101 35 /c 0x03 /a 16 /c 0x07 /d " Vous avez " /c 0x0C /d "!tot!" /c 0x03 /d " hypoth" /a 138 /d "que!s!" /c 0x07 /d " au " /c 0x07 /g 103 37 /d "total " /a 133 /d " rembourcer, dont :" /g 103 40 /c 0x03 /a 16 /c 0x02 /d " !moy!" /c 0x07 /d " batiment!sss! de type" /c 0x03 /d " Moyen" /c 0x07 /d "." /g 103 43 /c 0x03 /a 16 /c 0x02 /d " !gra!" /c 0x07 /d " batiment!ssss! de type" /c 0x03 /d " Grand" /c 0x07 /d "." /g 19 28 /c 0x03 /d "Nom de la Ville   " /c 0x03 /a 16 /c 0x07 /d "  !vname!" /g 19 32 /c 0x05 /d "Total de Jours    " /c 0x03 /a 16 /c 0x07 /d "  12" /g 19 36 /c 0x09 /d "Population        " /c 0x03 /a 16 /c 0x07 /d "  !popu!" /g 61 28 /c 0x0E /d "Point d'honneur   " /c 0x03 /a 16 /c 0x07 /d "  5/16" /g 61 32 /c 0x02 /d "Argent ( en $ )   " /c 0x03 /a 16 /c 0x07 /d "  !argent!" /g 61 36 /c 0x0D /d "Niveau du Joueur  " /c 0x03 /a 16 /c 0x07 /d "  !niv!/10"

 insertbmp /p:"%~dp0Images\Interface\noevent.bmp" /x:310 /y:190 /z:110

rem -----------------

call :affargent

:loopacc


 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set a=%%c
  set y=%%b
  set x=%%a
 )

  If !x! GTR 113 if !x! LSS 128 if !y! GTR 2 if !y! LSS 8 goto boutique
  If !x! GTR 98 if !x! LSS 113 if !y! GTR 2 if !y! LSS 8 goto revenus
  If !x! GTR 83 if !x! LSS 98 if !y! GTR 2 if !y! LSS 8 goto ville
  If !x! GTR 128 if !x! LSS 143 if !y! GTR 2 if !y! LSS 8 goto banque

 If !x! GTR 29 if !x! LSS 92 if !y! GTR 44 if !y! LSS 46 goto comman

goto loopacc

:comman

 echo;/c 0x07 /h 1 /g 31 45

 set /p "$com="
 set "acom=0"

 If /i "!$com!"=="creepy" ( 
   If !creepy!==1 ( set "creepy=0" ) else ( set "creepy=1" )
   set "acom=1" 
 )

 If /i "!$com!"=="flammrock" start "" "Flammrock.cmd" & set "acom=1"

 If /i "!$com!"=="harold" set /a argent+=100000 & set "acom=1"

 If /i "!$com!"=="root" set /a niv+=1 & set "acom=1"

 If /i "!$com!"=="shaw" set /a xp+=1 & set "acom=1"

 If /i "!$com!"=="fusco" set /a argent=1000 & set "acom=1"

 echo;/h 0 /g 30 45 /d "                                                              "


 If !acom!==1 (
   echo;/g 30 45 /c 0x0A /d " CODE ACCEPTE " /a 33 /w 1400
   echo;/g 30 45 /d "                                                              "
 )

 If !acom!==0 (
   echo;/g 30 45 /c 0x0C /d " CODE NON RECONNUE " /a 33 /w 1400
   echo;/g 30 45 /d "                                                              "
 )

 
 
goto :goacc

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:boutique

 echo;/c 0x07 /g 0 9

 echo;-n
 echo;-n
 echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
 echo;-dn "     º                  º                  º                  º                  º                     º                                       º"
 echo;-dn "     º                  º                  º                  º                  º                     º                                       º"
 echo;-dn "     º                  º                  º                  º                  º                     º                                       º"
 echo;-dn "     ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹                                       º"

:boupage
 echo;/g 72 5 /c 0x07 /d "Acceuil" /g 88 5 /c 0x07 /d "Ville" /g 102 5 /c 0x07 /d "Revenus++" /g 117 5 /c 0x03 /d "Boutique" /g 133 5 /c 0x07 /d "Banque" /g 9 13 /c 0x07 /d "Type " /a 26 /d " Petit" /g 28 13 /c 0x07 /d "Type " /a 26 /d " Moyen" /g 47 13 /c 0x07 /d "Type " /a 26 /d " Grand" /g 65 13 /c 0x07 /d "Items " /a 26 /d " Guerre" /g 85 13 /c 0x0E /d "- Inventaire -" /g 0 16 /c 0x07

 If !boupage!==1 (

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º        ÚÄÄ¿               ÚÄÄ¿               ÚÄÄ¿               ÚÄÄ¿               ÚÄÄ¿         º                                       º"
 echo;-dn "     º        ³  ³               ³  ³               ³  ³               ³  ³               ³  ³         º                                       º"
 echo;-dn "     º        ³  ³               ³  ³               ³  ³               ³  ³               ³  ³         º                                       º"
 echo;-dn "     º        ÀÄÄÙ               ÀÄÄÙ               ÀÄÄÙ               ÀÄÄÙ               ÀÄÄÙ         º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       -    -             -    -             -    -             -    -             -    -        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/g 15 26 /c 0x03 /d "01" /g 34 26 /d "02" /g 53 26 /d "03" /g 72 26 /d "04" /g 91 26 /d "05" /g 9 13 /c 0x03 /d "Type " /a 26 /d " Petit"

  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:117 /y:246 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m21.bmp" /x:118 /y:246 /z:320

  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:269 /y:246 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m22.bmp" /x:270 /y:246 /z:320

  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:421 /y:246 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m23.bmp" /x:422 /y:246 /z:320

  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:573 /y:246 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m24.bmp" /x:574 /y:246 /z:320

  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:725 /y:246 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m25.bmp" /x:726 /y:246 /z:320
 )

 If !boupage!==2 (

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       ÚÄÄÄÄ¿             ÚÄÄÄÄ¿             ÚÄÄÄÄ¿             ÚÄÄÄÄ¿             ÚÄÄÄÄ¿        º                                       º"
 echo;-dn "     º       ³    ³             ³    ³             ³    ³             ³    ³             ³    ³        º                                       º"
 echo;-dn "     º       ³    ³             ³    ³             ³    ³             ³    ³             ³    ³        º                                       º"
 echo;-dn "     º       ÀÄÄÄÄÙ             ÀÄÄÄÄÙ             ÀÄÄÄÄÙ             ÀÄÄÄÄÙ             ÀÄÄÄÄÙ        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       -    -             -    -             -    -             -    -             -    -        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       ÚÄÄÄÄ¿             ÚÄÄÄÄ¿             ÚÄÄÄÄ¿             ÚÄÄÄÄ¿             ÚÄÄÄÄ¿        º                                       º"
 echo;-dn "     º       ³    ³             ³    ³             ³    ³             ³    ³             ³    ³        º                                       º"
 echo;-dn "     º       ³    ³             ³    ³             ³    ³             ³    ³             ³    ³        º                                       º"
 echo;-dn "     º       ÀÄÄÄÄÙ             ÀÄÄÄÄÙ             ÀÄÄÄÄÙ             ÀÄÄÄÄÙ             ÀÄÄÄÄÙ        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       -    -             -    -             -    -             -    -             -    -        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/g 15 26 /c 0x03 /d "06" /g 34 26 /d "07" /g 53 26 /d "08" /g 72 26 /d "09" /g 91 26 /d "10" /g 15 41 /c 0x03 /d "11" /g 34 41 /d "12" /g 53 41 /d "13" /g 72 41 /d "14" /g 91 41 /d "15" /g 28 13 /c 0x03 /d "Type " /a 26 /d " Moyen"

  insertbmp /p:"%~dp0Images\Batiment\m1.bmp" /x:109 /y:246 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m2.bmp" /x:261 /y:246 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m3.bmp" /x:413 /y:246 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m4.bmp" /x:565 /y:246 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m5.bmp" /x:717 /y:246 /z:39

  insertbmp /p:"%~dp0Images\Batiment\m6.bmp" /x:109 /y:426 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m7.bmp" /x:261 /y:426 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m8.bmp" /x:413 /y:426 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m9.bmp" /x:565 /y:426 /z:39
  insertbmp /p:"%~dp0Images\Batiment\m10.bmp" /x:717 /y:426 /z:39
  
 )

 If !boupage!==3 (

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º     ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿      º                                       º"
 echo;-dn "     º     ³        ³         ³        ³         ³        ³         ³        ³         ³        ³      º                                       º"
 echo;-dn "     º     ³        ³         ³        ³         ³        ³         ³        ³         ³        ³      º                                       º"
 echo;-dn "     º     ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ      º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       -    -             -    -             -    -             -    -             -    -        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º     ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿         ÚÄÄÄÄÄÄÄÄ¿      º                                       º"
 echo;-dn "     º     ³        ³         ³        ³         ³        ³         ³        ³         ³        ³      º                                       º"
 echo;-dn "     º     ³        ³         ³        ³         ³        ³         ³        ³         ³        ³      º                                       º"
 echo;-dn "     º     ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÙ      º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º       -    -             -    -             -    -             -    -             -    -        º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/g 15 26 /c 0x03 /d "16" /g 34 26 /d "17" /g 53 26 /d "18" /g 72 26 /d "19" /g 91 26 /d "20" /g 15 41 /c 0x03 /d "21" /g 34 41 /d "22" /g 53 41 /d "23" /g 72 41 /d "24" /g 91 41 /d "25" /g 47 13 /c 0x03 /d "Type " /a 26 /d " Grand"

  insertbmp /p:"%~dp0Images\Batiment\m11.bmp" /x:93 /y:246 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m12.bmp" /x:245 /y:246 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m13.bmp" /x:397 /y:246 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m14.bmp" /x:549 /y:246 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m15.bmp" /x:701 /y:246 /z:100

  insertbmp /p:"%~dp0Images\Batiment\m16.bmp" /x:93 /y:426 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m17.bmp" /x:245 /y:426 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m18.bmp" /x:397 /y:426 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m19.bmp" /x:549 /y:426 /z:100
  insertbmp /p:"%~dp0Images\Batiment\m20.bmp" /x:701 /y:426 /z:100
  
 )

 If !boupage!==4 (

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/g 65 13 /c 0x03 /d "Items " /a 26 /d " Guerre"

 )

 If !boupage!==5 (

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/g 85 13 /c 0x03 /d "- Inventaire -"

 )

:lagbou
call :affargent

:loopbou


 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
   set a=%%c
   set y=%%b
   set x=%%a
 )

 If !x! GTR 98 if !x! LSS 113 if !y! GTR 2 if !y! LSS 8 goto revenus
 If !x! GTR 83 if !x! LSS 98 if !y! GTR 2 if !y! LSS 8 goto ville
 If !x! GTR 128 if !x! LSS 143 if !y! GTR 2 if !y! LSS 8 goto banque
 If !x! GTR 68 if !x! LSS 83 if !y! GTR 2 if !y! LSS 8 goto acceuil

 If !boupage!==1 (
  If !x! GTR 24 if !x! LSS 43 if !y! GTR 11 if !y! LSS 15 set "boupage=2" && goto :boupage
  If !x! GTR 43 if !x! LSS 62 if !y! GTR 11 if !y! LSS 15 set "boupage=3" && goto :boupage
  If !x! GTR 62 if !x! LSS 81 if !y! GTR 11 if !y! LSS 15 set "boupage=4" && goto :boupage   
  If !x! GTR 81 if !x! LSS 103 if !y! GTR 11 if !y! LSS 15 set "boupage=5" && goto :boupage
 )

 If !boupage!==2 (
  If !x! GTR 5 if !x! LSS 24 if !y! GTR 11 if !y! LSS 15 set "boupage=1" && goto :boupage
  If !x! GTR 43 if !x! LSS 62 if !y! GTR 11 if !y! LSS 15 set "boupage=3" && goto :boupage
  If !x! GTR 62 if !x! LSS 81 if !y! GTR 11 if !y! LSS 15 set "boupage=4" && goto :boupage
  If !x! GTR 81 if !x! LSS 103 if !y! GTR 11 if !y! LSS 15 set "boupage=5" && goto :boupage
 )

 If !boupage!==3 (
  If !x! GTR 5 if !x! LSS 24 if !y! GTR 11 if !y! LSS 15 set "boupage=1" && goto :boupage
  If !x! GTR 24 if !x! LSS 43 if !y! GTR 11 if !y! LSS 15 set "boupage=2" && goto :boupage
  If !x! GTR 62 if !x! LSS 81 if !y! GTR 11 if !y! LSS 15 set "boupage=4" && goto :boupage
  If !x! GTR 81 if !x! LSS 103 if !y! GTR 11 if !y! LSS 15 set "boupage=5" && goto :boupage
 )

 If !boupage!==4 (
  If !x! GTR 5 if !x! LSS 24 if !y! GTR 11 if !y! LSS 15 set "boupage=1" && goto :boupage
  If !x! GTR 24 if !x! LSS 43 if !y! GTR 11 if !y! LSS 15 set "boupage=2" && goto :boupage
  If !x! GTR 43 if !x! LSS 62 if !y! GTR 11 if !y! LSS 15 set "boupage=3" && goto :boupage
  If !x! GTR 81 if !x! LSS 103 if !y! GTR 11 if !y! LSS 15 set "boupage=5" && goto :boupage
 )

 If !boupage!==5 (
  If !x! GTR 5 if !x! LSS 24 if !y! GTR 11 if !y! LSS 15 set "boupage=1" && goto :boupage
  If !x! GTR 24 if !x! LSS 43 if !y! GTR 11 if !y! LSS 15 set "boupage=2" && goto :boupage
  If !x! GTR 43 if !x! LSS 62 if !y! GTR 11 if !y! LSS 15 set "boupage=3" && goto :boupage
  If !x! GTR 62 if !x! LSS 81 if !y! GTR 11 if !y! LSS 15 set "boupage=4" && goto :boupage
 )

goto loopbou

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:banque

 echo;/g 0 9 /c 0x07

 echo;-n
 echo;-n
 echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
 echo;-dn "     º                                                º                                                º                                       º"
 echo;-dn "     º                                                º                                                º                                       º"
 echo;-dn "     º                                                º                                                º                                       º"
 echo;-dn "     ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹                                       º"

 :drawbanque
 echo;/g 106 13 /d "                                    " /g 72 5 /c 0x07 /d "Acceuil" /g 88 5 /c 0x07 /d "Ville" /g 102 5 /c 0x07 /d "Revenus++" /g 117 5 /c 0x07 /d "Boutique" /g 133 5 /c 0x03 /d "Banque" /g 0 16 /c 0x07

 If !pageb!==1 (

  set "sbaa=0"
  set "pageb=1"
  set "aie=0"
  set "banc=0"
  set "fredy=1"

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º          ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ³               ³             ³               ³             ³               ³          º                                       º"
 echo;-dn "     º          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/g 133 5 /c 0x03 /d "Banque" /g 27 13 /c 0x03 /d "Pr" /a 136 /d "t" /c 0x07 /g 70 13 /d "R" /a 130 /d "compence en attente"

  call :affargent

 insertbmp /p:"%~dp0Images\Banque\ba1.bmp" /x:133 /y:234 /z:40
 insertbmp /p:"%~dp0Images\Banque\ba2.bmp" /x:373 /y:234 /z:40
 insertbmp /p:"%~dp0Images\Banque\ba3.bmp" /x:613 /y:234 /z:40

 insertbmp /p:"%~dp0Images\Banque\ba4.bmp" /x:133 /y:354 /z:40
 insertbmp /p:"%~dp0Images\Banque\ba5.bmp" /x:373 /y:354 /z:40
 insertbmp /p:"%~dp0Images\Banque\ba6.bmp" /x:613 /y:354 /z:40

 insertbmp /p:"%~dp0Images\Banque\ba7.bmp" /x:133 /y:474 /z:40
 insertbmp /p:"%~dp0Images\Banque\ba8.bmp" /x:373 /y:474 /z:40
 insertbmp /p:"%~dp0Images\Banque\ba9.bmp" /x:613 /y:474 /z:40

 )

 If !pageb!==2 (
 
 set "pageb=2"

 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     º                                                                                                 º                                       º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"


 echo;/g 133 5 /c 0x03 /d "Banque" /g 27 13 /c 0x07 /d "Pr" /a 136 /d "t" /c 0x03 /g 70 13 /d "R" /a 130 /d "compence en attente" 

 )

:lagban
 If !pageb!==1 (
  
  If !sbaa!==1 (
   insertbmp /p:"%~dp0Images\Interface\barre0.bmp" /x:878 /y:398 /z:35
   insertbmp /p:"%~dp0Images\Banque\ba!banc!.bmp" /x:880 /y:399 /z:35
  )
  
  If !sbaa!==0 (
   set "clearbb=                                      "
   echo;/g 105 13 /d "!clearbb!" /g 105 16 /d "!clearbb!" /g 105 18 /d "!clearbb!" /g 105 20 /d "!clearbb!" /g 105 24 /d "!clearbb!" /g 105 23 /d "!clearbb!" /g 105 26 /d "!clearbb!" /g 105 28 /d "!clearbb!" /g 105 31 /d "!clearbb!" /g 105 32 /d "!clearbb!" /g 105 33 /d "!clearbb!" /g 105 34 /d "!clearbb!" /g 105 35 /d "!clearbb!" /g 105 36 /d "!clearbb!" /g 105 37 /d "!clearbb!" /g 105 38 /d "!clearbb!" /g 105 39 /d "!clearbb!" /g 105 40 /d "!clearbb!" /g 105 41 /d "!clearbb!" /g 105 42 /d "!clearbb!" /g 105 43 /d "!clearbb!" /g 105 44 /d "!clearbb!" /g 105 45 /d "!clearbb!" /g 105 46 /d "!clearbb!" /g 105 47 /d "!clearbb!" /g 105 21 /d "!clearbb!" /g 105 30 /d "!clearbb!" 
   
   echo;/g 113 13 /c 0x03 /a 16 /d " Information Pr" /a 136 /d "t " /a 17 
   
   echo;/g 106 16 /c 0x03 /a 16 /c 0x07 /d " Bienvenue dans votre " /c 0x0E /d "Banque" /c 0x07 /d " " /a 33 
   echo;/g 106 19 /c 0x03 /a 16 /c 0x07 /d " Il est " /c 0x0C /d "imp" /a 130 /d "ratif" /c 0x07 /d " de rembourcer un" /g 108 21 /c 0x07 /d "pr" /a 136 /d "t dans le d" /a 130 /d "lais accord" /a 130 /d "." 
   echo;/g 106 24 /c 0x03 /a 16 /c 0x07 /d " Si vous " /c 0x03 /d "d" /a 130 /d "passer " /c 0x07 /d "le d" /a 130 /d "lais de" 
   
   echo;/g 108 26 /c 0x07 /d "rembourcement, vous serez" /g 108 28 /c 0x03 /d "automatiquement " /c 0x07 /d "d" /a 130 /d "bit" /a 130 /d " du" /c 0x02 /d " double" 
   echo;/g 108 30 /c 0x07 /d "du montant du " /c 0x03  /d "pr" /a 136 /d "t" /c 0x07 /d " initial."
   set "abanc=0"
  )

  If !fredy!==1 (
   set "no=0"
   for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
    set a=%%a
    set b=%%b
    set c=%%c
    set c=!c: =!

    If not "!c!"=="n" ( set "bancn=!a!"
     set "no=1" 
    )
   )

   If not !no!==0 (

    If !bancn!==1 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:131 /y:233 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba1.bmp" /x:133 /y:234 /z:40
    )
    If !bancn!==2 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:371 /y:233 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba2.bmp" /x:373 /y:234 /z:40
    )
    If !bancn!==3 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:611 /y:233 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba3.bmp" /x:613 /y:234 /z:40
    )
    If !bancn!==4 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:131 /y:353 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba4.bmp" /x:133 /y:354 /z:40
    )
    If !bancn!==5 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:371 /y:353 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba5.bmp" /x:373 /y:354 /z:40
    )
    If !bancn!==6 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:611 /y:353 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba6.bmp" /x:613 /y:354 /z:40
    )
    If !bancn!==7 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:131 /y:473 /z:100
    insertbmp /p:"%~dp0Images\Banque\ba7.bmp" /x:133 /y:474 /z:40
    )
    If !bancn!==8 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:371 /y:473 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba8.bmp" /x:373 /y:474 /z:40
    )
    If !bancn!==9 ( 
     insertbmp /p:"%~dp0Images\Interface\barre2.bmp" /x:611 /y:473 /z:100
     insertbmp /p:"%~dp0Images\Banque\ba9.bmp" /x:613 /y:474 /z:40
    )
   )
   
  )
 )



 call :affargent

 set "fredy=0"

:loopba
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set a=%%c
  set y=%%b
  set x=%%a
 )

 If %a% GTR 0 if %a% LSS 6 (

  If !x! GTR 98 if !x! LSS 113 if !y! GTR 2 if !y! LSS 8 goto revenus
  If %x% GTR 83 if %x% LSS 98 if %y% GTR 2 if %y% LSS 8 goto ville
  If !x! GTR 113 if !x! LSS 128 if !y! GTR 2 if !y! LSS 8 goto boutique
  If !x! GTR 68 if !x! LSS 83 if !y! GTR 2 if !y! LSS 8 goto acceuil

  If !pageb!==1 (

   If %x% GTR 16 if %x% LSS 32 if %y% GTR 19 if %y% LSS 25 (
    set "banc=1"
    goto banq )

   If %x% GTR 46 if %x% LSS 62 if %y% GTR 19 if %y% LSS 25 (
    set "banc=2"
    goto banq )

   If %x% GTR 76 if %x% LSS 92 if %y% GTR 19 if %y% LSS 25 (
    set "banc=3"
    goto banq )

   If %x% GTR 16 if %x% LSS 32 if %y% GTR 29 if %y% LSS 35 (
    set "banc=4"
    goto banq )

   If %x% GTR 46 if %x% LSS 62 if %y% GTR 29 if %y% LSS 35 (
    set "banc=5"
    goto banq )

   If %x% GTR 76 if %x% LSS 92 if %y% GTR 29 if %y% LSS 35 (
    set "banc=6"
    goto banq )

   If %x% GTR 16 if %x% LSS 32 if %y% GTR 39 if %y% LSS 45 (
    set "banc=7"
    goto banq )

   If %x% GTR 46 if %x% LSS 62 if %y% GTR 39 if %y% LSS 45 (
    set "banc=8"
    goto banq )

   If %x% GTR 76 if %x% LSS 92 if %y% GTR 39 if %y% LSS 45 (
    set "banc=9"
    goto banq )

   If !sbaa!==1 If %x% GTR 120 if %x% LSS 128 if %y% GTR 40 if %y% LSS 44 if !aie!==0 goto achtp
   If !sbaa!==1 If %x% GTR 118 if %x% LSS 129 if %y% GTR 40 if %y% LSS 44 if !aie!==1 goto achtpp
   If %x% GTR 54 if %x% LSS 103 if %y% GTR 11 if %y% LSS 15 set "pageb=2" & goto :drawbanque

   If %x% GTR 5 if %x% LSS 103 if %y% GTR 15 if %y% LSS 49 set "sbaa=0" && goto :lagban

  )

  If !pageb!==2 (

   If %x% GTR 5 if %x% LSS 54 if %y% GTR 11 if %y% LSS 15 ( set "pageb=1"
   goto :drawbanque )
 
  )
 )

goto :loopba

:banq

 call :testecls

 set "rac=/a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196"

 set yvy=0
 set aie=0

 for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c
  set c=!c: =!

  If !banc!==!a! (
   set "bbpret=!b!"
   set /a "bbjou=!a!*4+3" )

  If not "!c!"=="n" ( set /a yvy+=1
    If !a!==!banc! set aie=1 
  )
 
 )

 
 set bbint=!banc!
 set /a bbtopret=!bbpret!*!bbint!/100+!bbpret!

 set aie=!aie: =!
 set fred=0

 If !aie!==1 goto :remboupret

 set red=3

 If !yvy! gtr 0 set red=c


 echo;/g 105 13 /d "!clearbb!" /g 105 16 /d "!clearbb!" /g 105 18 /d "!clearbb!" /g 105 19 /d "!clearbb!" /g 105 20 /d "!clearbb!" /g 105 24 /d "!clearbb!" /g 105 23 /d "!clearbb!" /g 105 26 /d "!clearbb!" /g 105 28 /d "!clearbb!" /g 105 31 /d "!clearbb!" /g 105 32 /d "!clearbb!" /g 105 33 /d "!clearbb!" /g 105 34 /d "!clearbb!" /g 105 35 /d "!clearbb!" /g 105 36 /d "!clearbb!" /g 105 37 /d "!clearbb!" /g 105 38 /d "!clearbb!" /g 105 39 /d "!clearbb!" /g 105 40 /d "!clearbb!" /g 105 41 /d "!clearbb!" /g 105 42 /d "!clearbb!" /g 105 43 /d "!clearbb!" /g 105 44 /d "!clearbb!" /g 105 45 /d "!clearbb!" /g 105 46 /d "!clearbb!" /g 105 47 /d "!clearbb!" /g 105 21 /d "!clearbb!" /g 105 30 /d "!clearbb!" 
 
 echo;/g 113 13 /c 0x03 /a 16 /d " Information Pr" /a 136 /d "t " /a 17 
 echo;/g 106 16 /c 0x03 /a 16 /c 0x07 /d " Le montant de ce " /c 0x0E /d "pr" /a 136 /d "t" /c 0x07 /d " s'" /a 130 /d "l" /a 138 /d "ve " /a 133 /g 108 18 /c 0x02 /d "!bbpret!$" /c 0x07 /d "." /c 0x08 /d " ( Niveau requis : !banc! )" 
 echo;/g 106 21 /c 0x03 /a 16 /c 0x07 /d " Les " /c 0x03 /d "int" /a 130 /d "rets" /c 0x07 /d " relatif " /a 133 /d " celui-ci" /g 108 23 /c 0x07 /d "sont de " /c 0x03 /d "!bbint!" /a 37 /c 0x07 /d "." 
 echo;/g 106 26 /c 0x03 /a 16 /c 0x07 /d " Le montant total du" /c 0x03 /d " rembourcement" /g 108 28 /c 0x07 /d "sera donc " /a 133 /c 0x02 /d " !bbtopret!$ " /c 0x07 /d "sous " /c 0x0E /d "!bbjou!" /c 0x07 /d " jour." /c 0x07 
 
 echo;/g 107 31 /a 218 %rac% %rac% %rac% /a 196 /a 191 /c 0x07 
 echo;/g 107 46 /a 192 %rac% %rac% %rac% /a 196 /a 217 /c 0x07 
 
 echo;/g 107 32 /a 179 /g 107 33 /a 179 /g 107 34 /a 179 /g 107 35 /a 179 /g 107 36 /a 179 /g 107 37 /a 179 /g 107 38 /a 179 /g 107 39 /a 179 /g 107 40 /a 179 /g 107 41 /a 179 /g 107 42 /a 179 /g 107 43 /a 179 /g 107 44 /a 179 /g 107 45 /a 179 /c 0x07 /g 139 32 /a 179 /g 139 33 /a 179 /g 139 34 /a 179 /g 139 35 /a 179 /g 139 36 /a 179 /g 139 37 /a 179 /g 139 38 /a 179 /g 139 39 /a 179 /g 139 40 /a 179 /g 139 41 /a 179 /g 139 42 /a 179 /g 139 43 /a 179 /g 139 44 /a 179 /g 139 45 /a 179 
 
 echo;/g 129 34 /c 0x07 /d "GAIN " /c 0x03 /a 31 /g 129 36 /c 0x02 /d "!bbpret!$" /c 0x07 
 
 echo;/g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 
 echo;/g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 
 echo;/g 120 41 /a 179 /g 120 42 /a 179 
 echo;/g 120 43 /a 179 /g 128 41 /a 179 
 echo;/g 128 42 /a 179 /g 128 43 /a 179 
 
 echo;/g 121 42 /c 0x0!red! /d "ACQERIR"


 set "sbaa=1"

 goto :lagban

 :achtp

 If !niv! LSS !banc! ( 
  echo;!banc!>nivtemp.txt
  start "" "nolevel.cmd"
  goto lagban
 )

 set yvy=0
 
 for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c
  set c=!c: =!

  If not "!c!"=="n" ( set /a yvy+=1 )
   If !banc!==!a! set "argpri=!b!"
 )
 
 If !yvy! GTR 0 goto noprett

 set /a argent+=!argpri!

 for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c

  If !a!==!banc! set "c=!bbjou!"

  echo;!a!-!b!-!c!>>"!Path_Game!\tempp.ini"
 )

 cd "!Path_Game!"
  del /q "pret.ini"
  ren "tempp.ini" "pret.ini"
 cd "!in!"

 set "fredy=1"

 goto banq

:noprett
 start "" "nopret.cmd"
goto lagban

:remboupret

 echo;/g 105 13 /d "!clearbb!" /g 105 16 /d "!clearbb!" /g 105 18 /d "!clearbb!" /g 105 19 /d "!clearbb!" /g 105 20 /d "!clearbb!" /g 105 24 /d "!clearbb!" /g 105 23 /d "!clearbb!" /g 105 26 /d "!clearbb!" /g 105 28 /d "!clearbb!" /g 105 31 /d "!clearbb!" /g 105 32 /d "!clearbb!" /g 105 33 /d "!clearbb!" /g 105 34 /d "!clearbb!" /g 105 35 /d "!clearbb!" /g 105 36 /d "!clearbb!" /g 105 37 /d "!clearbb!" /g 105 38 /d "!clearbb!" /g 105 39 /d "!clearbb!" /g 105 40 /d "!clearbb!" /g 105 41 /d "!clearbb!" /g 105 42 /d "!clearbb!" /g 105 43 /d "!clearbb!" /g 105 44 /d "!clearbb!" /g 105 45 /d "!clearbb!" /g 105 46 /d "!clearbb!" /g 105 47 /d "!clearbb!" /g 105 21 /d "!clearbb!" /g 105 30 /d "!clearbb!" 
 
 echo;/g 113 13 /c 0x03 /a 16 /d " Information Pr" /a 136 /d "t " /a 17 
 echo;/g 106 16 /c 0x03 /a 16 /c 0x07 /d " Le montant de ce " /c 0x0E /d "pr" /a 136 /d "t" /c 0x07 /d " s'" /a 130 /d "l" /a 138 /d "ve " /a 133 /g 108 18 /c 0x02 /d "!bbpret!$" /c 0x07 /d "." /c 0x08 /d " ( Niveau requis : !banc! )" 
 echo;/g 106 21 /c 0x03 /a 16 /c 0x07 /d " Les " /c 0x03 /d "int" /a 130 /d "rets" /c 0x07 /d " relatif " /a 133 /d " celui-ci" 
 echo;/g 108 23 /c 0x07 /d "sont de " /c 0x03 /d "!bbint!" /a 37 /c 0x07 /d "." 
 echo;/g 106 26 /c 0x03 /a 16 /c 0x07 /d " Le montant total du" /c 0x03 /d " rembourcement" /g 108 28 /c 0x07 /d "sera donc " /a 133 /c 0x02 /d " !bbtopret!$ " /c 0x07 /d "sous " /c 0x0E /d "!bbjou!" /c 0x07 /d " jour." /c 0x07 
 echo;/g 107 31 /a 218 %rac% %rac% %rac% /a 196 /a 191 /c 0x07 
 echo;/g 107 46 /a 192 %rac% %rac% %rac% /a 196 /a 217 /c 0x07 
 
 echo;/g 107 32 /a 179 /g 107 33 /a 179 /g 107 34 /a 179 /g 107 35 /a 179 /g 107 36 /a 179 /g 107 37 /a 179 /g 107 38 /a 179 /g 107 39 /a 179 /g 107 40 /a 179 /g 107 41 /a 179 /g 107 42 /a 179 /g 107 43 /a 179 /g 107 44 /a 179 /g 107 45 /a 179 /c 0x07 /g 139 32 /a 179 /g 139 33 /a 179 /g 139 34 /a 179 /g 139 35 /a 179 /g 139 36 /a 179 /g 139 37 /a 179 /g 139 38 /a 179 /g 139 39 /a 179 /g 139 40 /a 179 /g 139 41 /a 179 /g 139 42 /a 179 /g 139 43 /a 179 /g 139 44 /a 179 /g 139 45 /a 179 
 
 echo;/g 129 34 /c 0x07 /d "PRIX " /c 0x03 /a 31 
 echo;/g 129 36 /c 0x02 /d "!bbtopret!$" /c 0x07 
 echo;/g 118 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 
 echo;/g 118 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 
 echo;/g 118 41 /a 179 /g 118 42 /a 179 /g 118 43 /a 179 /g 129 41 /a 179 
 echo;/g 129 42 /a 179 /g 129 43 /a 179 /g 119 42 /c 0x02 /d "REMBOURCER"

 set "sbaa=1"

goto :lagban

:achtpp

 If !banc!==1 (
  set bbpret=8000
  set bbjou=7
 )
 
 for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c
  set c=!c: =!

  If !banc!==!a! ( set "bbpret=!b!"
   set /a "bbjou=4*!banc!+3" 
  )
 )

 set bbint=!banc!
 set /a bbtopret=!bbpret!*!bbint!/100+!bbpret!

 If !argent! LSS !bbtopret! start "" "nomoney.cmd" && goto lagban

 
 set /a argent-=!bbtopret!

 for /f "usebackq tokens=1,2,3 delims=- " %%a in ("!Path_Game!\pret.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c
  set c=!c: =!

  If !a!==!banc! set "c=n"

  echo;!a!-!b!-!c!>>"!Path_Game!\tempp.ini"
 )

 cd "!Path_Game!"
  del /q "pret.ini"
  ren "tempp.ini" "pret.ini"
 cd "!in!"

 set "abanc=!banc!"

 If !abanc!==1 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:131 /y:233 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba1.bmp" /x:133 /y:234 /z:40
 )
 If !abanc!==2 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:371 /y:233 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba2.bmp" /x:373 /y:234 /z:40
 )
 If !abanc!==3 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:611 /y:233 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba3.bmp" /x:613 /y:234 /z:40
 )
 If !abanc!==4 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:131 /y:353 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba4.bmp" /x:133 /y:354 /z:40
 )
 If !abanc!==5 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:371 /y:353 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba5.bmp" /x:373 /y:354 /z:40
 )
 If !abanc!==6 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:611 /y:353 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba6.bmp" /x:613 /y:354 /z:40
 )
 If !abanc!==7 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:131 /y:473 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba7.bmp" /x:133 /y:474 /z:40
 )
 If !abanc!==8 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:371 /y:473 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba8.bmp" /x:373 /y:474 /z:40
 )
 If !abanc!==9 ( 
  insertbmp /p:"%~dp0Images\Interface\barre1.bmp" /x:611 /y:473 /z:100
  insertbmp /p:"%~dp0Images\Banque\ba9.bmp" /x:613 /y:474 /z:40
 )

goto banq


rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:revenus

:bource

 echo;/g 72 5 /c 0x07 /d "Acceuil" /g 88 5 /c 0x07 /d "Ville" /g 102 5 /c 0x03 /d "Revenus++" /g 117 5 /c 0x07 /d "Boutique" /g 133 5 /c 0x07 /d "Banque" 

:setbource
 set "sb=0"
 set "ppge=1"

:img

 If !page!==2 (

  If !ppge!==1 (

   echo;/g 0 9 /c 0x07
 
   echo;-n
   echo;-n
   echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º           ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

   set ppge=0
  )

  echo;/g 51 13 /c 0x03 /d "[ Page 2 ]" /g 49 13 /c 0x07 /d "-" /g 62 13 /d "-" /g 98 13 /d "      " /g 8 13 /c 0x03 /a 17 /a 196 /a 196 /g 21 23 /c 0x0C /d "- 4/55 - " /g 52 23 /c 0x0C /d "- 2/31 -" /g 81 23 /c 0x0E /d " - 1/2 -" /g 102 5 /c 0x03 /d "Revenus++"

  insertbmp /p:"%~dp0Images\Bource\b10.bmp" /x:141 /y:199 /z:40
  insertbmp /p:"%~dp0Images\Bource\b11.bmp" /x:381 /y:199 /z:40
  insertbmp /p:"%~dp0Images\Bource\b12.bmp" /x:621 /y:199 /z:40
 )

rem bx -------------------------------------------------------------------------------------------------------------------------------------------------

 If !page!==1 (

  If !ppge!==1 (
  
   echo;/g 0 9 /c 0x07
  
   echo;-n
   echo;-n
   echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º           ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º           ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º           ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ³               ³             ³               ³             ³               ³          º                                      º"
   echo;-dn "     º           ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ          º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     º                                                                                                  º                                      º"
   echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
 
   set ppge=0

  )

  echo;/g 51 13 /c 0x03 /d "[ Page 1 ]" /g 49 13 /c 0x07 /d "-" /g 62 13 /d "-" /g 21 23 /c 0x02 /d " - 2/3 -" /g 52 23 /c 0x02 /d "- 3/5 - " /g 82 23 /c 0x02 /d "- 1/3 -" /g 22 34 /c 0x02 /d "- 5/8 -" /g 52 34 /c 0x02 /d "- 4/9 -" /g 82 34 /c 0x08 /d "- 2/9 -" /g 22 45 /c 0x08 /d "- 1/8 -" /g 52 45 /c 0x08 /d "- 3/19 -" /g 82 45 /c 0x0c /d "- 6/66 -" /g 99 13 /c 0x03 /a 196 /a 196 /a 16 /g 102 5 /c 0x03 /d "Revenus++" /g 8 13 /d "      "

  insertbmp /p:"%~dp0Images\Bource\b1.bmp" /x:141 /y:199 /z:40
  insertbmp /p:"%~dp0Images\Bource\b2.bmp" /x:381 /y:199 /z:40
  insertbmp /p:"%~dp0Images\Bource\b3.bmp" /x:621 /y:199 /z:40

  insertbmp /p:"%~dp0Images\Bource\b4.bmp" /x:141 /y:331 /z:40
  insertbmp /p:"%~dp0Images\Bource\b5.bmp" /x:381 /y:331 /z:40
  insertbmp /p:"%~dp0Images\Bource\b6.bmp" /x:621 /y:331 /z:40

  insertbmp /p:"%~dp0Images\Bource\b7.bmp" /x:141 /y:463 /z:40
  insertbmp /p:"%~dp0Images\Bource\b8.bmp" /x:381 /y:463 /z:40
  insertbmp /p:"%~dp0Images\Bource\b9.bmp" /x:621 /y:463 /z:40

 )

:bimg

 If !sb!==0 ( call :clsbb
  call :nosb 
 )

 If !sb! GTR 0 insertbmp /p:"%~dp0Images\Bource\b!bx!.bmp" /x:872 /y:390 /z:40

rem bx -------------------------------------------------------------------------------------------------------------------------------------------------

:lop

 call :affargent

:lagb
 

 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set c=%%c
  set y=%%b
  set x=%%a
 )
 
 If %c%==0 goto lagb

 If !c! gtr 5 if %c% LSS 1000 goto bource

 If %c% GTR 0 if %c% Lss 6 (


  If %x% GTR 83 if %x% LSS 98 if %y% GTR 2 if %y% LSS 8 goto ville
  If !x! GTR 128 if !x! LSS 143 if !y! GTR 2 if !y! LSS 8 goto banque
  If !x! GTR 113 if !x! LSS 128 if !y! GTR 2 if !y! LSS 8 goto boutique
  If !x! GTR 68 if !x! LSS 83 if !y! GTR 2 if !y! LSS 8 goto acceuil

  If %page%==2 (

   If %x% GTR 7 if %x% LSS 12 if %y%==13 ( set ppge=1
    set page=1
    set sb=0
    goto :img )

   If %x% GTR 17 if %x% LSS 33 if %y% GTR 16 if %y% LSS 22 set "bx=10" & goto :affbource
   If %x% GTR 47 if %x% LSS 63 if %y% GTR 16 if %y% LSS 22 set "bx=11" & goto :affbource
   If %x% GTR 77 if %x% LSS 92 if %y% GTR 16 if %y% LSS 22 set "bx=12" & goto :affbource

 )

  If %page%==1 (

   If %x% GTR 98 if %x% LSS 103 if %y%==13 ( set page=2
    set sb=0
    call :clsb2
    goto img )

   If %x% GTR 17 if %x% LSS 33 if %y% GTR 16 if %y% LSS 22 set "bx=1" & goto :affbource
   If %x% GTR 47 if %x% LSS 63 if %y% GTR 16 if %y% LSS 22 set "bx=2" & goto :affbource
   If %x% GTR 77 if %x% LSS 92 if %y% GTR 16 if %y% LSS 22 set "bx=3" & goto :affbource

   If %x% GTR 17 if %x% LSS 33 if %y% GTR 27 if %y% LSS 33 set "bx=4" & goto :affbource
   If %x% GTR 47 if %x% LSS 63 if %y% GTR 27 if %y% LSS 33 set "bx=5" & goto :affbource
   If %x% GTR 77 if %x% LSS 92 if %y% GTR 27 if %y% LSS 33 set "bx=6" & goto :affbource

   If %x% GTR 17 if %x% LSS 33 if %y% GTR 38 if %y% LSS 44 set "bx=7" & goto :affbource
   If %x% GTR 47 if %x% LSS 63 if %y% GTR 38 if %y% LSS 44 set "bx=8" & goto :affbource
   If %x% GTR 77 if %x% LSS 92 if %y% GTR 38 if %y% LSS 44 set "bx=9" & goto :affbource

  )

  If %sb% GTR 0 If %x% GTR 119 if %x% LSS 130 if %y% GTR 39 if %y% LSS 44 goto mis

  If %sb%==1 (

   If %x% GTR 104 if %x% LSS 144 if %y% GTR 11 if %y% LSS 49 goto img

   set mis=0
   set sb=0
   call :clsbb
   
   goto img

  )
 )

goto lop

rem bx -------------------------------------------------------------------------------------------------------------------------------------------------

:mis

 If !niv! LSS !nivreq! ( echo;/g 122 42 /c 0x0c /d "MISER" /a 33 
  echo;!nivreq! >nivtemp.txt
  start "" "nolevel.cmd"
  echo;/g 122 42 /w 125 /c 0x03 /d "MISER" /a 33
  goto lop
 )

 If not !bx!==12 If !argent! LSS !prixb! ( echo;/g 122 42 /c 0x0c /d "MISER" /a 33 
  start "" "nomoney.cmd" 
  echo;/g 122 42 /w 125 /c 0x03 /d "MISER" /a 33
  goto lop
 )
 
 echo;/g 122 42 /c 0x07 /d "MISER" /a 33
 
 cd %~dp0Musiques
 start sound.vbs
 cd %~dp0
 
 If !bx! GTR 0 if !bx! LSS 12 (
  set /a argent-=!prixb!
  set /a coef=%random%%%!two!
  If !coef! GTR 0 If !coef! LEQ !one! call :bourceplus
 )

 If !bx!==12 (
  set /a arg=!argent!/2
  set argg=!argent!
  set /a argent-=!arg!
  set /a coef=%random%%%2
  
  If !coef!==1 call :bourceplus

  echo;/g 132 35 /d "       " /g 122 42 /c 0x03 /d "MISER" /a 33

  call :b12
  call :carreau
 )

 echo;/g 122 42 /c 0x03 /d "MISER" /a 33

goto lop


:affbource

 call :clsbb

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\bource.ini") do (
  set bxx=%%a
  
  If !bxx!==!bx! (
   set nivreq=%%b
   set prixb=%%c
   set one=%%d
   set two=%%e
  )
  
 )

 call :floatCalc !two!/!one!*!prixb!+!prixb!
 set prixf=!floatCalc!

 call :b!bx!

 call :carreau

 set sb=1

goto bimg

rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

:bourceplus 
 for /f "usebackq tokens=1,2,3,4,5,6 delims=- " %%a in ("!Path_Game!\bource.ini") do (
  set a=%%a
  set b=%%b
  set c=%%c
  set d=%%d
  set e=%%e
  set f=%%f
  set f=!f: =!

  If !a!==!bx! set /a f+=1

  echo;!a!-!b!-!c!-!d!-!e!-!f!>>"!Path_Game!\tempp.ini"
 )
 
 cd "!Path_Game!"
  del /q "bource.ini"
  ren "tempp.ini" "bource.ini"
 cd "!in!"

goto :eof

:floatCalc
 if not exist "%tmp%\floatCalc.vbs" echo;WScript. echo;Round(Eval(WScript.Arguments(0)))>"%tmp%\floatCalc.vbs"
 for /f %%i in ('cscript //nologo "%tmp%\floatCalc.vbs" "%*"') do (set "floatCalc=%%i")
 set "floatCalc=%floatCalc:,=.%"
goto :eof

:b1
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " WeTube" /c 0x07 /d ", une soci" /a 130 /d t /a 130 /d " dont" /c 0x07 /g 107 20 /d "la r" /a 130 /d "putation n'est plus " /a 133 /d " faire." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x02 /d "FAIBLE" /c 0x07 /d "."  /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'obtenir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b2
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " PopCorn" /c 0x07 /d ", une soci" /a 130 /d t /a 130 /c 0x07 /g 107 20 /d "d'audio visuel sur la POP culture." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x02 /d "FAIBLE" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'obtenir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b3
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " MiameMiaou" /c 0x07 /d ", une c" /a 130 /d "l" /a 138 /d "bre" /c 0x07 /g 107 20 /d "entreprise de croquette pour chat." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x02 /d "FAIBLE" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'obtenir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b4
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d  " Gogole" /c 0x07 /d ", une soci" /a 130 /d t /a 130 /d " dans" /c 0x07 /g 107 20 /d "le domaine de la surveillance." /g 107 23 /c 0x03 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x02 /d "FAIBLE" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'obtenir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b5
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " Auto-Satisfaction" /c 0x07 /d ", une" /c 0x07 /g 107 20 /d "soci" /a 130 /d t /a 130 /d " d'entretient d'automobile." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x02 /d "FAIBLE" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'obtenir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b6
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " M" /a 130 /d "taph'Or" /c 0x07 /d ", une soci" /a 130 /d t /a 130 /c 0x07 /g 107 20 /d "de bijouterie de luxe." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x08 /d "MOYEN" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'avoir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b7
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d  " Vert-Tige" /c 0x07 /d ", une c" /a 130 /d "l" /a 138 /d "bre" /c 0x07 /g 107 20 /d "soci" /a 130 /d "t" /a 130 /d " de fleuriste " /a 33 /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x08 /d "MOYEN" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'avoir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b8
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " FaceCh" /a 138 /d "vre" /c 0x07 /d ", un r" /a 130 /d "seau" /c 0x07 /g 107 20 /d "social populaire chez les jeunes." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x08 /d "MOYEN" /c 0x07 /d "." /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'avoir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b9
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " Batch.xoo.it" /c 0x07 /d ", une" /c 0x07 /g 107 20 /d "soci" /a 130 /d t /a 130 /d " des plus prom" /a 130 /d "teuse " /a 33 /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x0c /d "ELEVE" /c 0x07 /d "."  /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'avoir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b10
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " UIbatch" /c 0x07 /d ", une multi-" /c 0x07 /g 107 20 /d "nationnal tr" /a 130 /d "s convoit" /a 130 /d "e." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x0c /d "ELEVE" /c 0x07 /d "."  /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'avoir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b11
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de" /c 0x03 /d " Decima Technologie" /c 0x07 /d ", une" /c 0x07 /g 107 20 /d "une soci" /a 130 /d "t" /a 130 /d " dans le multim" /a 130 /d "dia." /c 0x03 /g 107 23 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x0c /d "ELEVE" /c 0x07 /d "."  /c 0x03 /g 107 26 /a 16 /c 0x07 /d " Le prix de mise est de " /c 0x03 /d "!prixb!$" /c 0x07 /d ". Vous" /c 0x03 /g 107 28 /c 0x07 /d "avez " /c 0x02 /d "!one! chance sur !two! " /c 0x07 /d "d'avoir" /c 0x03 /d " !prixf!$" /c 0x07 /d "." /g 127 35 /c 0x02 /d "PRIX : !prixb!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem ------

:b12

set /a argn=!argent!/2
 echo;/c 0x03 /g 112 13 /a 16 /c 0x03 /d " Information Traiding " /c 0x03 /a 17 /c 0x03 /g 107 16 /a 16 /c 0x07 /d " Cette courbe repr" /a 130 /d "sente les" /c 0x07 /g 107 18 /d "actions de " /c 0x03 /d "!vname! " /c 0x07 /d "" /a 33 /g 107 21 /c 0x03 /a 16 /c 0x07 /d " Le taux de risque est " /c 0x0E /d "STABLE" /c 0x07 /d "." /g 107 24 /c 0x03 /a 16 /c 0x07 /d " Soit vous" /c 0x03 /d " gagnez " /c 0x07 /d "la moitier de" /g 107 26 /d "votre argent. Soit vous perdez la" /g 107 28 /c 0x07 /d "moitier de votre " /c 0x03 /d "argent " /c 0x07 /a 33 /c 0x02 /d " (1/2)" /g 126 35 /c 0x02 /d "PRIX : !argn!$" /c 0x07 /g 120 40 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /c 0x07 /g 120 44 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 120 41 /a 179 /g 120 42 /a 179 /g 120 43 /a 179 /g 129 41 /a 179 /g 129 42 /a 179 /g 129 43 /a 179 /g 122 42 /c 0x03 /d "MISER" /a 33

goto :eof

rem end bx ---------------------------------------------------------------------------------------------------------------------------------------------

rem draw -----------------------------------------------------------------------------------------------------------------------------------------------

:clsbb
 set "clearbb=                                      "
 echo;/g 105 13 /d "%clearbb%" /g 105 16 /d "%clearbb%" /g 105 18 /d "%clearbb%" /g 105 20 /d "%clearbb%" /g 105 24 /d "%clearbb%" /g 105 23 /d "%clearbb%" /g 105 26 /d "%clearbb%" /g 105 28 /d "%clearbb%" /g 105 31 /d "%clearbb%" /g 105 32 /d "%clearbb%" /g 105 33 /d "%clearbb%" /g 105 34 /d "%clearbb%" /g 105 35 /d "%clearbb%" /g 105 36 /d "%clearbb%" /g 105 37 /d "%clearbb%" /g 105 38 /d "%clearbb%" /g 105 39 /d "%clearbb%" /g 105 40 /d "%clearbb%" /g 105 41 /d "%clearbb%" /g 105 42 /d "%clearbb%" /g 105 43 /d "%clearbb%" /g 105 44 /d "%clearbb%" /g 105 45 /d "%clearbb%" /g 105 46 /d "%clearbb%" /g 105 47 /d "%clearbb%" /g 105 21 /d "%clearbb%" /g 105 30 /d "%clearbb%"
goto :eof

:carreau
 set "rac=/a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196"
 echo;/c 0x07 /g 107 31 /a 218 %rac% %rac% %rac% /a 196 /a 196 /a 191 /c 0x07 /g 107 46 /a 192 %rac% %rac% %rac% /a 196 /a 196 /a 217 /c 0x07 /g 107 32 /a 179 /g 107 33 /a 179 /g 107 34 /a 179 /g 107 35 /a 179 /g 107 36 /a 179 /g 107 37 /a 179 /g 107 38 /a 179 /g 107 39 /a 179 /g 107 40 /a 179 /g 107 41 /a 179 /g 107 42 /a 179 /g 107 43 /a 179 /g 107 44 /a 179 /g 107 45 /a 179 /c 0x07 /g 140 32 /a 179 /g 140 33 /a 179 /g 140 34 /a 179 /g 140 35 /a 179 /g 140 36 /a 179 /g 140 37 /a 179 /g 140 38 /a 179 /g 140 39 /a 179 /g 140 40 /a 179 /g 140 41 /a 179 /g 140 42 /a 179 /g 140 43 /a 179 /g 140 44 /a 179 /g 140 45 /a 179
goto :eof

:nosb
 echo;/g 119 13 /c 0x03 /a 16 /d " Bource " /a 17 /g 107 16 /c 0x03 /a 16 /c 0x07 /d " Bienvenue dans la" /c 0x03 /d " salle des" /g 109 18 /c 0x03 /d "march" /a 130 /d "s" /c 0x07 /d "." /g 107 21 /c 0x03 /a 16 /c 0x07 /d " Le gain de vos mises vous seras" /g 109 23 /d "distribu" /a 130 /d " en" /c 0x0E /d " fin" /c 0x07 /d " de journ" /a 130 /d "e." /g 107 26 /c 0x03 /a 16 /d " Conseil :" /c 0x07 /d " Pour exploiter au mieux" /g 109 28 /c 0x07 /d "le syst" /a 138 /d "me de la " /c 0x02 /d "bource" /c 0x07 /d ", faites" /g 109 30 /c 0x07 /d "attention aux co" /a 130 /d "ficients."
goto :eof

:clsb2
 set "clearb2=                                                                                  "
 echo;/g 17 27 /d "%clearb2%" /g 17 28 /d "%clearb2%" /g 17 29 /d "%clearb2%" /g 17 30 /d "%clearb2%" /g 17 31 /d "%clearb2%" /g 17 32 /d "%clearb2%" /g 17 33 /d "%clearb2%" /g 17 34 /d "%clearb2%" /g 17 27 /d "%clearb2%" /g 17 28 /d "%clearb2%" /g 17 29 /d "%clearb2%" /g 17 30 /d "%clearb2%" /g 17 31 /d "%clearb2%" /g 17 32 /d "%clearb2%" /g 17 33 /d "%clearb2%" /g 17 38 /d "%clearb2%" /g 17 39 /d "%clearb2%" /g 17 40 /d "%clearb2%" /g 17 41 /d "%clearb2%" /g 17 42 /d "%clearb2%" /g 17 43 /d "%clearb2%" /g 17 44 /d "%clearb2%" /g 17 45 /d "%clearb2%" /g 17 46 /d "%clearb2%"
goto :eof

rem end draw -------------------------------------------------------------------------------------------------------------------------------------------

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:ville
 echo;/g 72 5 /c 0x07 /d "Acceuil" /g 87 5 /c 0x03 /d " Ville  " /g 102 5 /c 0x07 /d "Revenus++" /g 117 5 /c 0x07 /d "Boutique" /g 133 5 /c 0x07 /d "Banque" 
 
 echo;/g 0 9 /c 0x07
 
 echo;-n
 echo;-n
 echo;-dn "     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
 echo;-dn "     º                             º                                 Ú¿ ³  ³                                     º                             º"
 echo;-dn "     º                             º   ÚÄÄÄÄ¿   ÚÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄ¿  ÀÙ ³  ³   ÚÄÄÄÄ¿  ÚÄÄÄÄ¿  Ú¿      ÚÄÄÄÄ¿    º                             º"
 echo;-dn "     º                             º   ³    ³   ³    ³   ³        ³     ³  ³   ³    ³  ³    ³  ÀÙ      ³    ³    º                             º"
 echo;-dn "     º                             º   ³    ³   ³    ³   ³        ³     ³  ³   ³    ³  ³    ³      Ú¿  ³    ³    ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄº"
 echo;-dn "     º                             º   ÀÄÄÄÄÙ   ÀÄÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÙ     ³  ³   ÀÄÄÄÄÙ  ÀÄÄÄÄÙ      ÀÙ  ÀÄÄÄÄÙ    º                             º"
 echo;-dn "     º                             º                                    ³  ³                                     º                             º"
 echo;-dn "     º                             º   ÚÄÄÄÄÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄ¿  ÚÄÄÄÄ¿  ³  ³   ÚÄÄÄÄÄÄÄÄ¿  ÚÄÄÄÄ¿    ÚÄÄÄÄÄÄÄÄ¿  º                             º"
 echo;-dn "     º                             º   ³        ³   ³        ³  ³    ³  ³  ³   ³        ³  ³    ³    ³        ³  º                             º"
 echo;-dn "     º                             º   ³        ³   ³        ³  ³    ³  ³  ³   ³        ³  ³    ³    ³        ³  º                             º"
 echo;-dn "     º                             º   ÀÄÄÄÄÄÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÙ  ÀÄÄÄÄÙ  ³  ³   ÀÄÄÄÄÄÄÄÄÙ  ÀÄÄÄÄÙ    ÀÄÄÄÄÄÄÄÄÙ  º                             º"
 echo;-dn "     º                             º                                    ³  ³                                     º                             º"
 echo;-dn "     º                             º   ÚÄÄÄÄÄÄÄÄ¿   ÚÄÄÄÄ¿  ÚÄÄÄÄ¿      ³  ³   Ú¿            ÚÄÄÄÄÄÄÄÄ¿  ÚÄÄÄÄ¿  º                             º"
 echo;-dn "     º                             º   ³        ³   ³    ³  ³    ³   Ú¿ ³  ³   ÀÙ  Ú¿        ³        ³  ³    ³  º                             º"
 echo;-dn "     º                             º   ³        ³   ³    ³  ³    ³   ÀÙ ³  ³       ÀÙ  Ú¿    ³        ³  ³    ³  º                             º"
 echo;-dn "     º                             º   ÀÄÄÄÄÄÄÄÄÙ   ÀÄÄÄÄÙ  ÀÄÄÄÄÙ      ³  ³           ÀÙ    ÀÄÄÄÄÄÄÄÄÙ  ÀÄÄÄÄÙ  º                             º"
 echo;-dn "     º                             º                               ÚÄÄÄÄÙ  ÀÄÄÄÄ¿                                º                             º"
 echo;-dn "     º                             º                               ³            ³                                º                             º"
 echo;-dn "     º                             ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄº                             º"
 echo;-dn "     º                             º                                                                             ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¹"
 echo;-dn "     º                             ºÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄº                             º"
 echo;-dn "     º                             º                               ³            ³                                º                             º"
 echo;-dn "     º                             º                               ÀÄÄÄÄ¿  ÚÄÄÄÄÙ                                º                             º"
 echo;-dn "     º                             º   ÚÄÄÄÄ¿   ÚÄÄÄÄ¿   ÚÄÄÄÄ¿ Ú¿      ³  ³             ÚÄÄÄÄÄÄÄÄ¿  ÚÄÄÄÄÄÄÄÄ¿  º                             º"
 echo;-dn "     º                             º   ³    ³   ³    ³   ³    ³ ÀÙ  Ú¿  ³  ³    Ú¿  Ú¿   ³        ³  ³        ³  º                             º"
 echo;-dn "     º                             º   ³    ³   ³    ³   ³    ³     ÀÙ  ³  ³    ÀÙ  ÀÙ   ³        ³  ³        ³  º                             º"
 echo;-dn "     º                             º   ÀÄÄÄÄÙ   ÀÄÄÄÄÙ   ÀÄÄÄÄÙ         ³  ³             ÀÄÄÄÄÄÄÄÄÙ  ÀÄÄÄÄÄÄÄÄÙ  º                             º"
 echo;-dn "     º                             º                                    ³  ³                                     º                             º"
 echo;-dn "     º                             º   ÚÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄ¿  ÚÄÄÄÄÄÄÄÄ¿  ³  ³   ÚÄÄÄÄ¿      ÚÄÄÄÄ¿      ÚÄÄÄÄ¿    º                             º"
 echo;-dn "     º                             º   ³    ³   ³        ³  ³        ³  ³  ³   ³    ³  Ú¿  ³    ³  Ú¿  ³    ³    º                             º"
 echo;-dn "     º                             º   ³    ³   ³        ³  ³        ³  ³  ³   ³    ³  ÀÙ  ³    ³  ÀÙ  ³    ³    º                             º"
 echo;-dn "     º                             º   ÀÄÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÙ  ÀÄÄÄÄÄÄÄÄÙ  ³  ³   ÀÄÄÄÄÙ      ÀÄÄÄÄÙ      ÀÄÄÄÄÙ    º                             º"
 echo;-dn "     º                             º                                    ³  ³                                     º                             º"
 echo;-dn "     º                             º   ÚÄÄÄÄ¿      ÚÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄ¿  ³  ³   ÚÄÄÄÄ¿      ÚÄÄÄÄ¿      ÚÄÄÄÄ¿    º                             º"
 echo;-dn "     º                             º   ³    ³  Ú¿  ³    ³   ³        ³  ³  ³   ³    ³  Ú¿  ³    ³  Ú¿  ³    ³    º                             º"
 echo;-dn "     º                             º   ³    ³  ÀÙ  ³    ³   ³        ³  ³  ³   ³    ³  ÀÙ  ³    ³  ÀÙ  ³    ³    º                             º"
 echo;-dn "     º                             º   ÀÄÄÄÄÙ      ÀÄÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÙ  ³  ³   ÀÄÄÄÄÙ      ÀÄÄÄÄÙ      ÀÄÄÄÄÙ    º                             º"
 echo;-dn "     º                             º                                    ³  ³                                     º                             º"
 echo;-dn "     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"

 echo;/c 0x03 /g 121 13 /a 16 /d " Inventaire " /a 17 /c 0x03 /g 13 13 /a 16 /d " Information " /a 17 /g 120 32 /a 16 /d " EventListener " /a 17

:setville

 set l=43
 set cx=30
 set sv=0
 set am=0
 set curruntcount=1
 set "clearev=                             "

rem -------------------------------------------------------------------------------------------------------------------------

:infoville
 set "inv=1"
 
 insertbmp /p:"%~dp0Images\Ville\bfond.bmp" /x:287 /y:140 /z:100

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  
  set ce=%%b
  set hypt=%%d
  
  If not !ce!==n if not !hypt!==n (
   
   If !ce! GTR 0 if !ce! LSS 11 ( 
    set tt=n
    set /a poshx=!x_%%a!-2
	set /a poshy=!y_%%a!-1
   )
   If !ce! GTR 10 if !ce! LSS 21 ( 
    set tt=g
    set /a poshx=!x_%%a!-2
	set /a poshy=!y_%%a!-1
   )
   
   insertbmp /p:"%~dp0Images\Ville\hyp!tt!.bmp" /x:!poshx! /y:!poshy! /z:100
  )
  
 )
 
 for /f "usebackq tokens=1,2 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set ce=%%b
  If not !ce!==n (
   If !ce! GTR 0 if !ce! LSS 11 set zz=39
   If !ce! GTR 10 if !ce! LSS 21 set zz=100
   If !ce! GTR 20 set zz=100
   insertbmp /p:"%~dp0Images\Batiment\m%%b.bmp" /x:!x_%%a! /y:!y_%%a! /z:!zz!
  )
 )

 If !creepy!==1 (
  set "bat=echo"

  for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
   set ce=%%b
   set e=%%e
   set e=!e: =!

   If !e!==1 (
    set /a "aa=!x_%%a!/8"
    set /a "ab=!y_%%a!/12"
    set /a "ba=!ab!+1"

    set "bat=!bat! /c 0x0C /g !aa! !ab! /a 218 /a 191 /g !aa! !ba! /a 192 /a 217"
   )
  )
 
 !bat!
 )

rem -------------------------------------------------------------------------------------------------------------------------

:loopv
 call :testecls

 If !sv!==0 (

  call :testecls
  call :clsin
  call :nosv

  If !am!==2 (

  echo;/g 114 34 /d "!clearev!" /g 114 35 /d "!clearev!" /g 114 36 /d "!clearev!" /g 114 37 /d "!clearev!" /g 114 38 /d "!clearev!" /g 114 39 /d "!clearev!" /g 114 40 /d "!clearev!" /g 114 41 /d "!clearev!" /g 114 42 /d "!clearev!" /g 114 43 /d "!clearev!" /g 114 44 /d "!clearev!" /g 114 45 /d "!clearev!" /g 114 46 /d "!clearev!" /g 114 47 /d "!clearev!" 
  
  echo;/g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Moyen" /c 0x07 /g 121 45 /d "Habitants " /c 0x02 /a 16 /c 0x03 /d " Aucun" /c 0x07 /g 125 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 191 /g 125 37 /a 179 /g 130 37 /a 179 /g 125 38 /a 179 /g 130 38 /a 179 /c 0x07 /g 125 39 /a 192 /a 196 /a 196 /a 196 /a 196 /a 217 /g 147 33
  
   insertbmp /p:"%~dp0Images\Ville\nomn.bmp" /x:1005 /y:438 /z:39
  )

  If !am!==3 (

  echo;/g 114 34 /d "!clearev!" /g 114 35 /d "!clearev!" /g 114 36 /d "!clearev!" /g 114 37 /d "!clearev!" /g 114 38 /d "!clearev!" /g 114 39 /d "!clearev!" /g 114 40 /d "!clearev!" /g 114 41 /d "!clearev!" /g 114 42 /d "!clearev!" /g 114 43 /d "!clearev!" /g 114 44 /d "!clearev!" /g 114 45 /d "!clearev!" /g 114 46 /d "!clearev!" 
  
  echo;/g 114 47 /d "!clearev!" /g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Grand" /c 0x07 /g 121 45 /d "Habitants " /c 0x02 /a 16 /c 0x03 /d " Aucun" /c 0x07 /g 123 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 123 37 /a 179 /g 132 37 /a 179 /g 123 38 /a 179 /g 132 38 /a 179 /c 0x07 /g 123 39 /a 192 /a 196  /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 147 33
  
  insertbmp /p:"%~dp0Images\Ville\nomg.bmp" /x:989 /y:438 /z:100
  )

  If !am!==1 (

  echo;/g 114 34 /d "!clearev!" /g 114 35 /d "!clearev!" /g 114 36 /d "!clearev!" /g 114 37 /d "!clearev!" /g 114 38 /d "!clearev!" /g 114 39 /d "!clearev!" /g 114 40 /d "!clearev!" /g 114 41 /d "!clearev!" /g 114 42 /d "!clearev!" /g 114 43 /d "!clearev!" /g 114 44 /d "!clearev!" /g 114 45 /d "!clearev!" 
  
  echo;/g 114 46 /d "!clearev!" /g 114 47 /d "!clearev!" /g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Petit" /c 0x07 /g 122 45 /d " Capacit" /a 130 /c 0x08 /d " #0" /c 0x07 /g 126 36 /a 218  /a 196 /a 196 /a 191 /g 126 37 /a 179 /d "  " /a 179 /g 126 38 /a 179 /d "  " /a 179 /g 126 39 /a 192 /a 196 /a 196 /a 217
  
  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:1013 /y:438 /z:320
  )

  If !am!==0 (
   set "clearev=                             "
   echo;/g 114 34 /d "!clearev!" /g 114 35 /d "!clearev!" /g 114 36 /d "!clearev!" /g 114 37 /d "!clearev!" /g 114 38 /d "!clearev!" /g 114 39 /d "!clearev!" /g 114 40 /d "!clearev!" /g 114 41 /d "!clearev!" /g 114 42 /d "!clearev!" /g 114 43 /d "!clearev!" /g 114 44 /d "!clearev!" /g 114 45 /d "!clearev!" /g 114 46 /d "!clearev!" /g 114 47 /d "!clearev!"
   insertbmp /p:"%~dp0Images\Interface\noevent.bmp" /x:913 /y:410 /z:100
   echo;/g 122 44 /c 0x07 /d "Aper" /a 135 /d "ue" /c 0x03 /d " Ville"
  )

 )

:invv
 If "!inv!"=="1" (
  call :algoinv
  set inv=0
  
 )

rem -------------------------------------------------------------------------------------------------------------------------

:ii
 call :affargent

 echo;/g !l! !cx! /c 0x8E /a 2 /g 116 19 /c 0x0!noinv! /a 17 /g 140 19 /a 16

:lagv
 

 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set a=%%c
  set y=%%b
  set x=%%a
 )

 If !a! GTR 5 if !a! LSS 111 (
  set inv=1
  goto :infoville
 )

rem Bug insertbmp
 If !x!==0 goto lagv
 If !a!==0 goto lagv

 If !a! GTR 0 if !a! LSS 6 goto clicv

rem Mouvement du perso !
 If !x!==1 (

  If !a! GTR 2424832 If !a! LSS 2424844 goto jgauche

  If !a! GTR 2555904 If !a! LSS 2555914 goto jdroit

  If !a! GTR 2490368 If !a! LSS 2490388 goto jhaut

  If !a! GTR 2621440 If !a! LSS 2621456 goto jbas

 )
 
 If !a! gtr 111 goto lagv

 goto loopv

rem -------------------------------------------------------------------------------------------------------------------------

:clicv

 If !x! GTR 98 if !x! LSS 113 if !y! GTR 2 if !y! LSS 8 goto revenus
 If !x! GTR 5 if !x! LSS 50 if !y! GTR 2 if !y! LSS 8 goto infoville
 If !x! GTR 128 if !x! LSS 143 if !y! GTR 2 if !y! LSS 8 goto banque
 If !x! GTR 113 if !x! LSS 128 if !y! GTR 2 if !y! LSS 8 goto boutique
 If !x! GTR 68 if !x! LSS 83 if !y! GTR 2 if !y! LSS 8 goto acceuil
 
 If !idmaison! GTR 0 if !idmaison! LSS 55 if !sv!==1 if !x! GTR 4 if !x! LSS 36 If !y! GTR 11 if !y! LSS 49 goto go1

 If !id_inv! gtr 0 if !id_inv! lss 11 if %x% GTR 126 if %x% LSS 131 if %y% GTR 18 if %y% Lss 21 ( set tai=2
  goto ide
 )

 If !id_inv! gtr 10 if !id_inv! lss 21 if %x% GTR 122 if %x% LSS 132 if %y% GTR 18 if %y% Lss 21 ( set tai=3
  goto ide
 )

 If !id_inv! gtr 20 if !id_inv! lss 26 if %x% GTR 125 if %x% LSS 130 if %y% GTR 18 if %y% Lss 21 ( set tai=1
  goto ide
 )


 If !noinv!==3 if !max_count! GTR 0 (

  If !x!==140 if !y!==19 (
   If !curruntcount!==!max_count! ( set curruntcount=1 ) else ( set /a curruntcount+=1 )
   set inv=1
   goto :invv
  )

  If !a!==1 If !x!==116 if !y!==19 (
   If !curruntcount!==1 ( set curruntcount=!max_count! ) else ( set /a curruntcount=!curruntcount!-1 )
   set inv=1
   goto :invv
  )
  
 )

rem -------------------------------------------------------------------------------------------------------------------------

 for /l %%i in (0,1,53) do (
  if !x! GTR !e.%%i.x! if !x! LSS !e.%%i.xmax! if !y! GTR !e.%%i.y! if !y! LSS !e.%%i.ymax! (
   set ee=%%i
   set current_emplacement=!ee!
   goto emplacement
  )
 )

 If !x! GTR 113 if !x! LSS 143 if !y! GTR 11 if !y! LSS 149 goto lagv

 If !sv!==1 (
  set sv=0
  set "am=0"
  goto loopv
 )

 If not !am!==0 set "am=0" & goto loopv

goto :lagv

rem -------------------------------------------------------------------------------------------------------------------------

:go1

 rem Am‚lioration ------------------------------------
 If !x! GTR 23 if !x! LSS 32 if !y! GTR 27 if !y! LSS 31 if !level.maison! LSS 5 if !argent! GTR !ameliorationPrice! If not !idmaison!==19 If not !idmaison! GTR 20 if !hyp!==0 (
  call :ameplus
  set /a argent-=!ameliorationPrice!
  call :clsin
  set ee=!current_emplacement!
  goto emplacement
 )
 If !x! GTR 23 if !x! LSS 32 if !y! GTR 27 if !y! LSS 31 if !argent! LSS !ameliorationPrice! if !hyp!==0 If not !idmaison!==19 If not !idmaison! GTR 20 start "" "nomoney.cmd"
 rem ------------------------------------

 rem HypthŠque ------------------------------------
 If %x% GTR 8 if %x% LSS 32 if %y% EQU 35 if !hyp!==0 If not !idmaison!==19 If not !idmaison! GTR 20 ( 
  call :hypplus
  set /a argent+=!gainsHypotheque!
  call :clsin
  set ee=!current_emplacement!
  goto emplacement
 )
 rem ------------------------------------

 rem Rembourcement ------------------------------------
 If %x% GTR 8 if %x% LSS 32 if %y% EQU 37 if !hyp!==1 if !argent! GTR !rembourcementPrice! If not !idmaison!==19 If not !idmaison! GTR 20 ( 
  call :hypmoins
  set /a argent-=!rembourcementPrice!
  call :clsin
  set ee=!current_emplacement!
  goto emplacement
 )

 If %x% GTR 8 if %x% LSS 32 if %y% EQU 37 if !hyp!==1 If not !idmaison!==19 If not !idmaison! GTR 20 If !argent! LSS !rembourcementPrice! start "" "nomoney.cmd"
 rem ------------------------------------

 rem Id sp‚cial ------------------------------------
 If %x% GTR 8 if %x% LSS 32 if %y% GTR 27 if %y% LSS 32 If !idmaison!==19 goto banque

 If !x! GTR 23 if !x! LSS 32 if !y! GTR 34 if !y! LSS 38 if !level.maison! LSS 5 if !argent! GTR !ameliorationPrice! if !idmaison! GTR 20 if !hyp!==0 (
  
  call :ameplus
  set /a argent-=!ameliorationPrice!
  call :clsin
  set ee=!current_emplacement!
  goto emplacement
 )

 If !x! GTR 23 if !x! LSS 32 if !y! GTR 34 if !y! LSS 38 if !level.maison! LSS 5 if !argent! GTR !ameliorationPrice! if !idmaison!==19 if !hyp!==0 (
  
  call :ameplus
  set /a argent-=!ameliorationPrice!
  call :clsin
  set ee=!current_emplacement!
  goto emplacement 
 )

 If !x! GTR 23 if !x! LSS 32 if !y! GTR 34 if !y! LSS 38 If !idmaison! GTR 20 (
  If !argent! LSS !rembourcementPrice! start "" "nomoney.cmd"
 )

 If !x! GTR 23 if !x! LSS 32 if !y! GTR 34 if !y! LSS 38 If !idmaison!==19 (
  If !argent! LSS !rembourcementPrice! start "" "nomoney.cmd"
 )
 rem ------------------------------------


 rem Supprimer / Vendre ------------------------------------
 If %x% GTR 8 if %x% LSS 32 if %y%==42 if !hyp!==0 goto venndre

 If %x% GTR 8 if %x% LSS 32 if %y%==44 if !hyp!==0 (
  set ee=!current_emplacement!
  goto supprimer )
 rem ------------------------------------

goto emplacement  

rem ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

:venndre
 insertbmp /p:"%~dp0Images\Ville\vendre.bmp" /x:913 /y:399 /z:100
 
 echo;/g 118 45 /c 0x02 /d "Vendre" /c 0x0C /g 132 45 /d "Annuler" /g 119 40 /c 0x07 /d "  la somme " /c 0x02 /d "!reventePrice!$" /c 0x07 /d " ?" /g %l% %cx% /c 0x8E /a 2 /g 116 19 /c 0x0!noinv! /a 17 /g 140 19 /a 16 /g 124 25

:bbmvendre
 
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set a=%%c
  set y=%%b
  set x=%%a
 )

 If !a!==1 If !x! GTR 116 If !x! LSS 125 if !y! GTR 43 if !y! LSS 47 goto suitvendre
 If !a!==1 If !x! GTR 130 If !x! LSS 139 if !y! GTR 43 if !y! LSS 47 ( set ee=!current_emplacement!
  goto emplacement )

 If !x! GTR -1 If !x! LSS 2 goto :bbmvendre

goto :bbmvendre

:suitvendre

 set /a argent+=!reventePrice!
 call :govendre
 set sv=0
 
goto ville

 rem ------------------------------------
 
:ameplus
 rem d-a-b-c
 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set d=%%a
  set a=%%b
  set b=%%c
  set c=%%d
  set e=%%e

  If !d!==e!ee! If !b! LSS 5 set /a b+=1

  echo;!d!-!a!-!b!-!c!-!e!>>"!Path_Game!\tempp.ini"
 )

 cd "!Path_Game!"
  del /q "emplacement.ini"
  ren "tempp.ini" "emplacement.ini"
 cd "!in!"

goto :eof

 rem ------------------------------------
 
:hypplus

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set c=%%d
  
  If %%a==e!ee! If !c!==n ( 
   set c=7
   
   If %%b GTR 0 if %%b LSS 11 ( 
    set tt=n
	set zz=39
   )
   
   If %%b GTR 10 if %%b LSS 21 ( 
    set tt=g
	set zz=100
   )
   
   set /a poshx=!x_%%a!-2
   set /a poshy=!y_%%a!-1
	
   insertbmp /p:"%~dp0Images\Ville\hyp!tt!.bmp" /x:!poshx! /y:!poshy! /z:100
   insertbmp /p:"%~dp0Images\Batiment\m%%b.bmp" /x:!x_%%a! /y:!y_%%a! /z:!zz!
  )

  echo;%%a-%%b-%%c-!c!-%%e>>"!Path_Game!\tempp.ini"
 )

 cd "!Path_Game!"
  del /q "emplacement.ini"
  ren "tempp.ini" "emplacement.ini"
 cd "!in!"

goto :eof

 rem ------------------------------------
 
:hypmoins

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set c=%%d
  
  If %%a==e!ee! If !c! gtr 0 ( 
   set "c=n"
   
   If %%b GTR 0 if %%b LSS 11 ( 
    set tt=n
	set zz=39
   )
   
   If %%b GTR 10 if %%b LSS 21 ( 
    set tt=g
	set zz=100
   )
   
   set /a poshx=!x_%%a!-2
   set /a poshy=!y_%%a!-1
	
   insertbmp /p:"%~dp0Images\Ville\reh!tt!.bmp" /x:!poshx! /y:!poshy! /z:100
   insertbmp /p:"%~dp0Images\Batiment\m%%b.bmp" /x:!x_%%a! /y:!y_%%a! /z:!zz!
  )
  
  echo;%%a-%%b-%%c-!c!-%%e>>"!Path_Game!\tempp.ini"
 )
 
 cd "!Path_Game!"
  del /q "emplacement.ini"
  ren "tempp.ini" "emplacement.ini"
 cd "!in!"

goto :eof

 rem ------------------------------------
 
:govendre
 rem d-a-b-c
 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set d=%%a
  set a=%%b
  set b=%%c
  set c=%%d
  set e=%%e

  If !d!==e!ee! (
   set a=n
   set b=n
   set c=n
  )
  
  echo;!d!-!a!-!b!-!c!-!e!>>"!Path_Game!\tempp.ini"
  
 )

 cd "!Path_Game!"
  del /q "emplacement.ini"
  ren "tempp.ini" "emplacement.ini"
 cd "!in!"

goto :eof

 rem ------------------------------------
 
:supprimer

 set curruntcount=!curruntcount: =!

  set count=0
  set noinv=3
  set tem=0

 rem -----

 for /f "usebackq tokens=1,2 delims=- " %%A in ("!Path_Game!\inventaire.ini") do (
  set idinvp=%%A
  set nomb=%%B
  set idinvp=!idinvp: =!
  If !idinvp!==!idmaison! set "tem=1"
 )

rem -----

 If !tem!==1 (

  for /f "usebackq tokens=1,2 delims=- " %%A in ("!Path_Game!\inventaire.ini") do (
   set ll=%%A
   set kk=%%B
   set ll=!ll: =!
   set kk=!kk: =!
   If !ll!==!idmaison! set /a kk+=1
   echo;!ll!-!kk!>>"!Path_Game!\tempp.ini"
  )

  cd "!Path_Game!"
   del /q "inventaire.ini"
   ren "tempp.ini" "inventaire.ini"
  cd "!in!"
 )


rem -----

 If !tem!==0 echo;!idmaison!-1>>"!Path_Game!\inventaire.ini"

rem -----

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set d=%%a
  set a=%%b
  set b=%%c
  set c=%%d
  set e=%%e

  If !d!==e!ee! (
  set a=n
  set b=n
  set c=n
  )
  echo;!d!-!a!-!b!-!c!-!e!>>"!Path_Game!\tempp.ini"
 )

 cd "!Path_Game!"
  del /q "emplacement.ini"
  ren "tempp.ini" "emplacement.ini"
 cd "!in!"

 set inv=1
 set sv=0
 
goto infoville

rem -------------------------------------------------------------------------------------------------------------------------

:jhaut

 If %l% GTR 72 if %l% LSS 75 if %cx%==12 goto ii
 If %l% GTR 35 if %l% LSS 68 if %cx%==30 goto ii
 If %l% GTR 79 if %l% LSS 113 if %cx%==30 goto ii

 If %l% GTR 67 if %l% LSS 73 if %cx%==28 goto ii
 If %l% GTR 74 if %l% LSS 80 if %cx%==28 goto ii

 echo;/g %l% %cx% /c 0x80 /d " " /c 0x0f
 set /a cx-=1

goto ii

:jbas

 If %l% GTR 72 if %l% LSS 75 if %cx%==48 goto ii
 If %l% GTR 35 if %l% LSS 68 if %cx%==30 goto ii
 If %l% GTR 79 if %l% LSS 113 if %cx%==30 goto ii

 If %l% GTR 67 if %l% LSS 73 if %cx%==32 goto ii
 If %l% GTR 74 if %l% LSS 80 if %cx%==32 goto ii

 echo;/g %l% %cx% /c 0x80 /d " " /c 0x0f
 set /a cx+=1

goto ii

:jgauche

 If %l%==36 if %cx%==30 goto ii
 if %l%==73 If %cx% GTR 32 if %cx% LSS 49 goto ii
 if %l%==73 If %cx% GTR 11 if %cx% LSS 28 goto ii

 if %l%==68 If %cx% GTR 27 if %cx% LSS 30 goto ii
 if %l%==68 If %cx% GTR 30 if %cx% LSS 33 goto ii

 echo;/g %l% %cx% /c 0x80 /d " " /c 0x0f
 set /a l-=1

 goto ii

:jdroit

 If %l%==112 if %cx%==30 goto ii
 if %l%==74 If %cx% GTR 32 if %cx% LSS 49 goto ii
 if %l%==74 If %cx% GTR 11 if %cx% LSS 28 goto ii

 if %l%==79 If %cx% GTR 27 if %cx% LSS 30 goto ii
 if %l%==79 If %cx% GTR 30 if %cx% LSS 33 goto ii

 echo;/g %l% %cx% /c 0x80 /d " " /c 0x0f
 set /a l+=1

goto ii

rem -------------------------------------------------------------------------------------------------------------------------

:nosv
 echo;/g 147 14 /d " " /g 147 15 /d " " /g 147 16 /d " " /g 114 17 /d " " /g 114 18 /d " " /g 114 19 /d " " /g 114 20 /d " " /g 114 21 /d " " /g 34 23 /d " " /g 114 22 /d " " /g 114 23 /d " " /g 114 24 /d " " /g 114 25 /d " " /g 114 26 /d " " /g 114 27 /d " " /g 114 28 /d " " /g 114 29 /d " " /g 147 30 /d " " /g 114 31 /d " " /g 114 32 /d " " /g 114 33 /d " " /g 114 34 /d " " /g 114 35 /d " " /g 114 36 /d " " /g 114 37 /d " " /g 114 38 /d " " /g 114 39 /d " " /g 114 40 /d " " /g 114 41 /d " " /g 114 42 /d " " /g 114 43 /d " " /g 114 44 /d " " /g 114 45 /d " " /g 114 46 /d " " /g 114 47 /d " " /g 114 48 /d " " /g 7 16 /c 0x03 /a 16 /c 0x07 /d " Bienvenue dans votre" /g 7 18 /c 0x07 /d "  ville : " /c 0x0E /d "CityDos" /c 0x07 /d " " /a 33 /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Vous poss" /a 130 /d "dez plus de" /c 0x03 /d " 50" /g 7 23 /c 0x03 /d "  emplacements " /c 0x07 /d "de tailles" /g 7 25 /c 0x07 /d "  diff" /a 130 /d "rentes." /g 7 28 /c 0x03 /a 16 /c 0x07 /d " Le total des " /c 0x03 /d "taxes " /c 0x07 /d "de" /g 7 30 /c 0x07 /d "  chacun de vos batiments" /g 7 32 /c 0x07 /d "  vous rapporte" /c 0x02 /d " 1000$" /c 0x07 /d " /j " /a 33

goto :eof

:clsin
 set "kcls=                            "
 echo;/g 7 14 /d "!kcls!" /g 7 15 /d "!kcls!" /g 7 16 /d "!kcls!" /g 7 17 /d "!kcls!" /g 7 18 /d "!kcls!" /g 7 19 /d "!kcls!" /g 7 20 /d "!kcls!" /g 7 21 /d "!kcls!" /g 7 23 /d "!kcls!" /g 7 22 /d "!kcls!" /g 7 23 /d "!kcls!" /g 7 24 /d "!kcls!" /g 7 25 /d "!kcls!" /g 7 26 /d "!kcls!" /g 7 27 /d "!kcls!" /g 7 28 /d "!kcls!" /g 7 29 /d "!kcls!" /g 7 30 /d "!kcls!" /g 7 31 /d "!kcls!" /g 7 32 /d "!kcls!" /g 7 33 /d "!kcls!" /g 7 34 /d "!kcls!" /g 7 35 /d "!kcls!" /g 7 36 /d "!kcls!" /g 7 37 /d "!kcls!" /g 7 38 /d "!kcls!" /g 7 39 /d "!kcls!" /g 7 40 /d "!kcls!" /g 7 41 /d "!kcls!" /g 7 42 /d "!kcls!" /g 7 43 /d "!kcls!" /g 7 44 /d "!kcls!" /g 7 45 /d "!kcls!" /g 7 46 /d "!kcls!" /g 7 47 /d "!kcls!" /g 7 48 /d "!kcls!"

goto :eof

:testecls
 echo;/g 147 14 /d " " /g 147 15 /d " " /g 147 16 /d " " /g 147 17 /d " " /g 147 18 /d " " /g 147 19 /d " " /g 147 20 /d " " /g 147 21 /d " " /g 34 23 /d " " /g 147 22 /d " " /g 147 23 /d " " /g 147 24 /d " " /g 147 25 /d " " /g 147 26 /d " " /g 147 27 /d " " /g 147 28 /d " " /g 147 29 /d " " /g 147 30 /d " " /g 147 31 /d " " /g 147 32 /d " " /g 147 33 /d " " /g 147 34 /d " " /g 147 35 /d " " /g 147 36 /d " " /g 147 37 /d " " /g 147 38 /d " " /g 147 39 /d " " /g 147 40 /d " " /g 147 41 /d " " /g 147 42 /d " " /g 147 43 /d " " /g 147 44 /d " " /g 147 45 /d " " /g 147 46 /d " " /g 147 47 /d " " /g 147 48 /d " "

goto :eof

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:emplacement
 call :testecls

 rem e-idmaison-level.maison-hypotheque-taille
 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set e=%%a
  
  If !e!==e!ee! (
   set idmaison=%%b
   set level.maison=%%c
   set hypotheque=%%d
   set t=%%e
  )
  
 )

 If !idmaison!==n goto noid

 If /i "!hypotheque!"=="n" set "hyp=0"
 If /i not "!hypotheque!"=="n" set "hyp=1"

 set sv=1

goto affichage

:noid
 If !t!==3 set am=3

 If !t!==2 set am=2

 If !t!==1 set am=1

 set sv=0

goto loopv

rem -------------------------------------------------------------------------------------------------------------------------

:affichage
 set if=1
 If !idmaison! GTR 20 set if=2
 If !idmaison!==19 set if=2

rem echo;-s zonne principale
 call :clsin

rem recuperation d'absolument toute les info
 call :SetAme

rem anti bug d'affichage echo
 call :testecls

rem Affichage des info concernant la maison :
 call :drawinfo

rem Affichage principale
 If !if!==1 call :drawprix
 If !if!==2 call :drawprixb

rem EventListener
 call :clearenventt

rem MOYEN --------------------
 If !idmaison! GTR 0 if !idmaison! LSS 11 (

  If not !idmaison!==8 if not !idmaison!==4 (
   echo;/g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Moyen" /c 0x07 /g 122 45 /d "Habitants " /c 0x02 /a 16 /c 0x03 /d " !e%idmaison%_population!" /c 0x07 /g 125 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 191 /g 125 37 /a 179 /g 130 37 /a 179 /g 125 38 /a 179 /g 130 38 /a 179 /c 0x07 /g 125 39 /a 192 /a 196 /a 196 /a 196 /a 196 /a 217 )

  If !idmaison!==8 (
   echo;/g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Moyen" /c 0x07 /g 122 45 /d "Salari" /a 130 /d "s " /c 0x02 /a 16 /c 0x03 /d " !e%idmaison%_population!" /c 0x07 /g 125 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 191 /g 125 37 /a 179 /g 130 37 /a 179 /g 125 38 /a 179 /g 130 38 /a 179 /c 0x07 /g 125 39 /a 192 /a 196 /a 196 /a 196 /a 196 /a 217 )

  If !idmaison!==4 (
   echo;/g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Moyen" /c 0x07 /g 122 45 /d "Salari" /a 130 /d "s " /c 0x02 /a 16 /c 0x03 /d " !e%idmaison%_population!" /c 0x07 /g 125 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 191 /g 125 37 /a 179 /g 130 37 /a 179 /g 125 38 /a 179 /g 130 38 /a 179 /c 0x07 /g 125 39 /a 192 /a 196 /a 196 /a 196 /a 196 /a 217 )
   
   insertbmp /p:"%~dp0Images\Batiment\m!idmaison!.bmp" /x:1005 /y:438 /z:39
  )
rem --------------------

rem GRAND --------------------
 If !idmaison! GTR 10 if !idmaison! LSS 21 (
 
  set teste=1

  If not !idmaison!==13 if not !idmaison!==15 if not !idmaison!==16 (
   echo;/g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Grand" /c 0x07 /g 122 45 /d "Salari" /a 130 /d "s " /c 0x02 /a 16 /c 0x03 /d " !e%idmaison%_population!" /c 0x07 /g 123 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 123 37 /a 179 /g 132 37 /a 179 /g 123 38 /a 179 /g 132 38 /a 179 /c 0x07 /g 123 39 /a 192 /a 196  /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217
   set teste=0
  )

  If !teste!==1 (
   echo;/g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Grand" /c 0x07 /g 122 45 /d "Habitants " /c 0x02 /a 16 /c 0x03 /d " !e%idmaison%_population!" /c 0x07 /g 123 36 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 123 37 /a 179 /g 132 37 /a 179 /g 123 38 /a 179 /g 132 38 /a 179 /c 0x07 /g 123 39 /a 192 /a 196  /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217
  )
  
  insertbmp /p:"%~dp0Images\Batiment\m!idmaison!.bmp" /x:989 /y:438 /z:100
 )
rem --------------------

rem PETIT --------------------
 If !idmaison! GTR 20 (

  set /a idmini=!idmaison!-20
  
  echo;/g 114 34 /d "!clearev!" /g 114 35 /d "!clearev!" /g 114 36 /d "!clearev!" /g 114 37 /d "!clearev!" /g 114 38 /d "!clearev!" /g 114 39 /d "!clearev!" /g 114 40 /d "!clearev!" /g 114 41 /d "!clearev!" /g 114 42 /d "!clearev!" /g 114 43 /d "!clearev!" /g 114 44 /d "!clearev!" /g 114 45 /d "!clearev!" /g 114 46 /d "!clearev!" /g 114 47 /d "!clearev!" /g 123 42 /c 0x07 /d "Type " /c 0x02 /a 16 /c 0x03 /d " Petit" /c 0x07 /g 122 45 /d " Capacit" /a 130 /c 0x03 /d " #!idmini!" /c 0x07 /g 126 36 /a 218 /a 196 /a 196 /a 191 /g 126 37 /a 179 /d "  " /a 179 /g 126 38 /a 179 /d "  " /a 179 /g 126 39 /a 192 /a 196 /a 196 /a 217
  
  
  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:1013 /y:438 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m!idmaison!.bmp" /x:1014 /y:438 /z:320
  
 )

 set sv=1
 set current_emplacement=!ee!

goto loopv

rem --------------------

rem -------------------------------------------------------------------------------------------------------------------------

:drawinfo

 If !idmaison! GTR 0 if !idmaison! LSS 7 if not !idmaison!==4 if not !idmaison!==3 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette maison appartient " /a 133 /g 7 18 /c 0x07 /d "  la famille " /c 0x03 /d "!e%idmaison%_description!" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==3 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est le chalet" /g 9 18 /c 0x07 /d "des" /c 0x03 /d " McGee" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==4 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est un garage"  /g 9 18 /c 0x07 /d "de chez " /c 0x03 /d "AutoSatisfaction" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==7 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une vaste"  /g 9 18 /c 0x07 /d "r" /a 130 /d "sidence " /c 0x03 /a 130 /d "tudiante" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==8 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce magasin se nomme le" /g 7 18 /c 0x03 /d "  FaiseMarket" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==9 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une jolie" /g 7 18 /c 0x07 /d "  maison de " /c 0x03 /d "retaite" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==10 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une " /a 130 /d "cole" /g 7 18 /c 0x03 /d "  universitaire" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==11 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une usine" /g 9 18 /c 0x07 /a 133 /c 0x03 /d " SpaceCake" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==12 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une usine" /g 9 18 /c 0x07 /a 133 /c 0x03 /d " Biscuit" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==13 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une" /g 9 18 /c 0x07 /d "luxieuse" /c 0x03 /d " Villa" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==14 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est l'" /a 130 /d "glise" /g 9 18 /c 0x07 /d "de" /c 0x03 /d " Notre-Dame" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==15 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est la ferme" /g 9 18 /c 0x07 /d "de la famille" /c 0x03 /d " Manders" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==16 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette maison appartient " /a 133 /g 7 18 /c 0x07 /d "  la famille " /c 0x03 /d "Simpsons" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==17 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est une" /g 9 18 /c 0x07 /d "caserne de" /c 0x03 /d " Pompier" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==18 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est le" /g 9 18 /c 0x07 /d "restaurant l'" /c 0x03 /d "effet mer" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==19 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est la banque" /g 9 18 /c 0x07 /d "de votre" /c 0x03 /d " Ville" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==20 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Ce batiment est l'hopital" /g 9 18 /c 0x07 /d "de" /c 0x03 /d " Saint-Marie" /c 0x07 /d "." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==21 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette bouche d'incendie" /g 9 18 /c 0x07 /d "n'est pas" /c 0x03 /d " Bleu" /c 0x07 /d " ..." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==22 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette bouche d'incendie" /g 9 18 /c 0x07 /d "n'est pas" /c 0x02 /d " Verte" /c 0x07 /d " ..." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==23 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette bouche d'incendie" /g 9 18 /c 0x07 /d "n'est pas" /c 0x0c /d " Rouge" /c 0x07 /d " ..." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==24 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette bouche d'incendie" /g 9 18 /c 0x07 /d "n'est pas" /c 0x0e /d " Jaune" /c 0x07 /d " ..." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

 if !idmaison!==25 (
  echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Cette bouche d'incendie" /g 9 18 /c 0x07 /d "n'est pas" /c 0x0d /d " Rose" /c 0x07 /d " ..." /g 7 21 /c 0x03 /a 16 /c 0x07 /d " Les taxes pay" /a 130 /d "es vous" /g 7 23 /c 0x07 /d "  rapporte " /c 0x02 /d "!DailyMoney!$ " /c 0x07 /d "par jour."
 )

goto :eof

:SetAme

 If "!level.maison!"=="1" (
    If !idmaison! GTR 0 If !idmaison! LSS 21 set DailyMoney=!a1_e%idmaison%_DailyMoney!
	If !idmaison! GTR 20 If !idmaison! LSS 26 set /a DailyMoney=!a1_e%idmaison%_DailyMoney!/100
    set ameliorationPrice=!a1_e%idmaison%_ameliorationPrice!
    set gainsHypotheque=!a1_e%idmaison%_gainsHypotheque!
    set rembourcementPrice=!a1_e%idmaison%_rembourcementPrice!
    set reventePrice=!a1_e%idmaison%_reventePrice!
  )

  If "!level.maison!"=="2" (
    If !idmaison! GTR 0 If !idmaison! LSS 21 set DailyMoney=!a2_e%idmaison%_DailyMoney!
	If !idmaison! GTR 20 If !idmaison! LSS 26 set /a DailyMoney=!a2_e%idmaison%_DailyMoney!/100
    set ameliorationPrice=!a2_e%idmaison%_ameliorationPrice!
    set gainsHypotheque=!a2_e%idmaison%_gainsHypotheque!
    set rembourcementPrice=!a2_e%idmaison%_rembourcementPrice!
    set reventePrice=!a2_e%idmaison%_reventePrice!
  )

  If "!level.maison!"=="3" (
    If !idmaison! GTR 0 If !idmaison! LSS 21 set DailyMoney=!a3_e%idmaison%_DailyMoney!
	If !idmaison! GTR 20 If !idmaison! LSS 26 set /a DailyMoney=!a3_e%idmaison%_DailyMoney!/100
    set ameliorationPrice=!a3_e%idmaison%_ameliorationPrice!
    set gainsHypotheque=!a3_e%idmaison%_gainsHypotheque!
    set rembourcementPrice=!a3_e%idmaison%_rembourcementPrice!
    set reventePrice=!a3_e%idmaison%_reventePrice!
  )

  If "!level.maison!"=="4" (
    If !idmaison! GTR 0 If !idmaison! LSS 21 set DailyMoney=!a4_e%idmaison%_DailyMoney!
	If !idmaison! GTR 20 If !idmaison! LSS 26 set /a DailyMoney=!a4_e%idmaison%_DailyMoney!/100
    set ameliorationPrice=!a4_e%idmaison%_ameliorationPrice!
    set gainsHypotheque=!a4_e%idmaison%_gainsHypotheque!
    set rembourcementPrice=!a4_e%idmaison%_rembourcementPrice!
    set reventePrice=!a4_e%idmaison%_reventePrice!
  )

  If "!level.maison!"=="5" (
    If !idmaison! GTR 0 If !idmaison! LSS 21 set DailyMoney=!a5_e%idmaison%_DailyMoney!
	If !idmaison! GTR 20 If !idmaison! LSS 26 set /a DailyMoney=!a5_e%idmaison%_DailyMoney!/100
    set "ameliorationPrice=!a5_e%idmaison%_ameliorationPrice!"
    set gainsHypotheque=!a5_e%idmaison%_gainsHypotheque!
    set rembourcementPrice=!a5_e%idmaison%_rembourcementPrice!
    set reventePrice=!a5_e%idmaison%_reventePrice!
  )

goto :eof

rem -------------------------------------------------------------------------------------------------------------------------

:drawprix

 set "bcac=/a 196 /a 196 /a 193"
 set "ccec=/a 196 /a 196 /a 194"
 set "cse=/a 196 /a 196"
 set "cens=/a 196 /a 196 /a 196 /a 196"

 If !level.maison!==5 ( set colam=8 ) else ( set colam=2 )

 If !hyp!==0 (
  set clhyp=7
  set chyp=8
  set chypc=8
  set cchypc=3
  set cchyp=E
  set ccchyp=2
  set chypt=8
 )

 If !hyp!==1 (
  set clhyp=8
  set chyp=E
  set chypc=2
  set cchypc=8
  set cchyp=8
  set ccchyp=8
  set chypt=C
  set colam=8
 )

 If !gainsHypotheque! LSS 1000 set "gainsHypotheque=!gainsHypotheque! "
 If !rembourcementPrice! LSS 1000 set "rembourcementPrice=!rembourcementPrice! "

 set "reventePrice=!reventePrice: =!

 If !reventePrice! GTR 9999 set "reventePrice=!reventePrice!
 If !reventePrice! LSS 1000 set "reventePrice= !reventePrice! "
 If !reventePrice! GTR 999 If !reventePrice! LSS 10000 set "reventePrice= !reventePrice!"

 echo;/g 8 27 /c 0x07 /a 218 %ccec% %ccec% %ccec% %ccec% %ccec% /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 8 28 /a 179 /d "  " /a 179 /d "  " /a 179 /d "  " /a 179 /d "  " /a 179 /d "  " /a 179 /c 0x0!colam! /d "Amelior" /a 130 /c 0x07 /a 179 /g 8 29 /c 0x07 /a 195 %cse% /a 193 %cse% /a 197 %bcac% %bcac% %cse% /a 180 /d "        " /a 179 /g 8 30 /a 179 /c 0x03 /d "Niv !level.maison!" /c 0x07 /a 179 /c 0x07 /d "+" /c 0x07 /d "!DailyMoney!$" /c 0x03 /d "/" /c 0x07 /d "j " /g 23 30 /a 179 /c 0x0!colam! /d "  !ameliorationPrice!$  " /c 0x07 /g 32 30 /a 179 /g 8 31 /a 192 %cse% %cse% /a 196 /a 193 %cse% %cse% %cse% /a 196 /a 196 /a 193 %cse% %cse% %cse% %cse% /a 217 /g 8 34 /c 0x07 /a 218 %cens% %cens% /a 196 /a 196 /a 194 %cens% %cens% %cens% /a 191 /g 8 35 /c 0x07 /a 179 /c 0x0!cchyp! /d "Hypoth" /a 130 /d "qu" /a 130 /c 0x07 /a 179 /c 0x0!ccchyp! /d "Gains: !gainsHypotheque!$" /c 0x07 /a 179 /g 8 36 /c 0x07 /a 195 %cens% %cens% /a 196 /a 196 /a 197 %cens% %cens% %cens% /a 180 /g 8 37 /c 0x07 /a 179 /c 0x0!chyp! /d "Rembourser" /c 0x07 /a 179 /c 0x0!chypt! /d "!rembourcementPrice!$/!hypotheque!j.max" /c 0x07 /a 179 /g 8 38 /c 0x07 /a 192 %cens% %cens% /a 196 /a 196 /a 193 %cens% %cens% %cens% /a 217 /g 8 41 /c 0x07 /a 218 %cens% %cens% /a 196 /a 196 /a 194 %cens% %cens% %cens% /a 191 /g 8 42 /c 0x07 /a 179 /c 0x0!cchypc! /d "  Vendre  " /c 0x07 /a 179 /c 0x0!ccchyp! /d "Gains:!reventePrice!$" /c 0x07 /a 179 /g 8 43 /c 0x07 /a 195 %cens% %cens% /a 196 /a 196 /a 197 %cens% %cens% %cens% /a 180 /g 8 44 /c 0x07 /a 179 /c 0x0!cchypc! /d " Supprim" /a 130 /d " " /c 0x07 /a 179 /c 0x0!clhyp! /d " Inventaire " /c 0x07 /a 179 /g 8 45 /c 0x07 /a 192 %cens% %cens% /a 196 /a 196 /a 193 %cens% %cens% %cens% /a 217

 set rembourcementPrice=!rembourcementPrice: =!
 set reventePrice=!reventePrice: =!
 set gainsHypotheque=!gainsHypotheque: =!

 insertbmp /p:"%~dp0Images\Ville\NivMai!level.maison!.bmp" /x:67 /y:329 /z:100

goto :eof

:drawprixb

 set "bcac=/a 196 /a 196 /a 193"
 set "ccec=/a 196 /a 196 /a 194"
 set "cse=/a 196 /a 196"
 set "cens=/a 196 /a 196 /a 196 /a 196"

 If !hyp!==0 (
  set clhyp=7
  set chyp=8
  set chypc=8
  set cchypc=3
  set cchyp=E
  set ccchyp=2
  set chypt=8
 )

 If !hyp!==1 (
  set clhyp=8
  set chyp=E
  set chypc=2
  set cchypc=8
  set cchyp=8
  set ccchyp=8
  set chypt=C
  set colam=8
 )


 If !level.maison!==5 ( set colam=8 ) else ( set colam=2 )
 If !gainsHypotheque! LSS 1000 set "gainsHypotheque=!gainsHypotheque! "
 If !rembourcementPrice! LSS 1000 set "rembourcementPrice=!rembourcementPrice! "

 set "reventePrice=!reventePrice: =!
 If !reventePrice! GTR 9999 set "reventePrice=!reventePrice!"

 If !reventePrice! LSS 1000 set "reventePrice= !reventePrice! "
 If !reventePrice! GTR 999 If !reventePrice! LSS 10000 set "reventePrice= !reventePrice!"

 echo;/g 8 27 /c 0x07 /a 218 %cens% %cens% /a 196 /a 196 /a 196 %cens% %cens% %cens% /a 191 /g 8 28 /c 0x07 /a 179 /c 0x07 /d "                       " /c 0x07 /a 179 /g 8 29 /c 0x07 /a 179 /c 0x0e /d "                       " /c 0x07 /a 179 /g 8 30 /c 0x07 /a 179 /c 0x07 /d "                       " /c 0x07 /a 179 /g 8 31 /c 0x07 /a 192 %cens% %cens% /a 196 /a 196 /a 196 %cens% %cens% %cens% /a 217 /g 8 34 /c 0x07 /a 218 %ccec% %ccec% %ccec% %ccec% %ccec% /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 8 35 /a 179 /d "  " /a 179 /d "  " /a 179 /d "  " /a 179 /d "  " /a 179 /d "  " /a 179 /c 0x0!colam! /d "Amelior" /a 130 /c 0x07 /a 179 /g 8 36 /c 0x07 /a 195 %cse% /a 193 %cse% /a 197 %bcac% %bcac% %cse% /a 180 /d "        " /a 179 /g 8 37 /a 179 /c 0x03 /d "Niv !level.maison!" /c 0x07 /a 179 /c 0x07 /d " +" /c 0x07 /d "!DailyMoney!$" /c 0x03 /d "/" /c 0x07 /d "j" /g 23 37 /a 179 /c 0x0!colam! /d "  !ameliorationPrice!$  " /c 0x07 /g 32 37 /a 179 /g 8 38 /a 192 %cse% %cse% /a 196 /a 193 %cse% %cse% %cse% /a 196 /a 196 /a 193 %cse% %cse% %cse% %cse% /a 217 /g 8 41 /c 0x07 /a 218 %cens% %cens% /a 196 /a 196 /a 194 %cens% %cens% %cens% /a 191 /g 8 42 /c 0x07 /a 179 /c 0x0!cchypc! /d "  Vendre  " /c 0x07 /a 179 /c 0x0!ccchyp! /d "Gains:!reventePrice!$" /c 0x07 /a 179 /g 8 43 /c 0x07 /a 195 %cens% %cens% /a 196 /a 196 /a 197 %cens% %cens% %cens% /a 180 /g 8 44 /c 0x07 /a 179 /c 0x0!cchypc! /d " Supprim" /a 130 /d " " /c 0x07 /a 179 /c 0x0!clhyp! /d " Inventaire " /c 0x07 /a 179 /g 8 45 /c 0x07 /a 192 %cens% %cens% /a 196 /a 196 /a 193 %cens% %cens% %cens% /a 217

 If !level.maison! GTR 0 if !level.maison! LSS 3 set bonus=1
 If !level.maison! GTR 2 if !level.maison! LSS 5 set bonus=2
 If !level.maison! == 5 set bonus=3

 If !idmaison!==19 echo;/g 11 29 /c 0x0e /a 196 /a 16 /c 0x07 /d " Aller " /a 133 /d " la" /c 0x03 /d " banque"
 If !idmaison!==21 echo;/g 12 29 /c 0x0e /d "+ " /c 0x03 /d "!bonus!" /a 37 /c 0x07 /d " revenus" /c 0x03 /d " taxes"
 If !idmaison!==22 echo;/g 11 29 /c 0x0e /d "+ " /c 0x03 /d "!bonus!" /a 37 /c 0x07 /d " revenus" /c 0x03 /d " bource"
 If !idmaison!==23 echo;/g 9 29 /c 0x0e /d "+ " /c 0x03 /d "!bonus!j" /c 0x07 /d " rembourcement" /c 0x03 /d " pr" /a 136 /d "t"
 If !idmaison!==24 echo;/g 9 29 /c 0x0e /d "  - " /c 0x03 /d "!bonus!" /a 37 /c 0x07 /d " prix" /c 0x03 /d " hypoth" /a 138 /d "que"
 If !idmaison!==25 echo;/g 9 29 /c 0x0e /d " +" /c 0x03 /d "!bonus!$" /c 0x07 /d " all revenus" /c 0x03 /d " taxes"

 set rembourcementPrice=!rembourcementPrice: =!
 set reventePrice=!reventePrice: =!
 set gainsHypotheque=!gainsHypotheque: =!

 

 insertbmp /p:"%~dp0Images\Ville\NivMai!level.maison!.bmp" /x:67 /y:413 /z:100

goto :eof

rem -------------------------------------------------------------------------------------------------------------------------

:algoinv
 set curruntcount=!curruntcount: =!

 set count=0
 set noinv=3

 If not exist "!Path_Game!\inventaire.ini" echo.>"!Path_Game!\inventaire.ini"

 for /f "usebackq tokens=1,2 delims=- " %%A in ("!Path_Game!\inventaire.ini") do (
  set /a count+=1
  If !count!==!curruntcount! ( set id_inv=%%A
   set num_inv=%%B 
  )
 )

 If !count!==0 ( set noinv=8 & goto noinv )

 set max_count=!count!


 set "ccl=                   "
 echo;/g 119 16 /d "!ccl!" /g 119 17 /d "!ccl!" /g 119 18 /d "!ccl!" /g 119 19 /d "!ccl!" /g 119 20 /d "!ccl!" /g 119 21 /d "!ccl!"

 set id_inv=!id_inv: =!
 set num_inv=!num_inv: =!

 If !id_inv! LSS 11 (
  echo;/c 0x07 /g 125 18 /a 218 /a 196 /a 196 /a 196 /a 196 /a 191 /g 125 19 /a 179 /g 130 19 /a 179 /g 125 20 /a 179 /g 130 20 /a 179 /c 0x07 /g 125 21 /a 192 /a 196 /a 196 /a 196 /a 196 /a 217 /g 118 24 /c 0x07 /d "- En possession : " /c 0x03 /d "!num_inv!" /c 0x07 /d " -" /g 126 27 /c 0x03 /d "!curruntcount!" /c 0x03 /d "/" /c 0x03 /d "!max_count!  " /g 115 25 /d "                       "

  insertbmp /p:"%~dp0Images\Batiment\m!id_inv!.bmp" /x:1005 /y:222 /z:39
 )

 If !id_inv! gtr 10 If !id_inv! LSS 21 (
  echo;/c 0x07 /g 123 18 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 123 19 /a 179 /g 132 19 /a 179 /g 123 20 /a 179 /g 132 20 /a 179 /c 0x07 /g 123 21 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g 118 24 /c 0x07 /d "- En possession : " /c 0x03 /d "!num_inv!" /c 0x07 /d " -" /g 126 27 /c 0x03 /d "!curruntcount!" /c 0x03 /d "/" /c 0x03 /d "!max_count!  " /g 115 25 /d "                       "
  
  insertbmp /p:"%~dp0Images\Batiment\m!id_inv!.bmp" /x:989 /y:222 /z:100
 )

 If !id_inv! GTR 20 (
  echo;/c 0x07 /g 126 18 /a 218 /a 196 /a 196 /a 191 /g 126 19 /a 179 /d "  " /a 179 /g 126 20 /a 179 /d "  " /a 179 /g 126 21 /a 192 /a 196 /a 196 /a 217 /g 118 24 /c 0x07 /d "- En possession : " /c 0x03 /d "!num_inv!" /c 0x07 /d " -" /g 126 27 /c 0x03 /d "!curruntcount!" /c 0x03 /d "/" /c 0x03 /d "!max_count!  " /g 115 25 /d "                       "
  
  insertbmp /p:"%~dp0Images\Ville\nomp.bmp" /x:1013 /y:222 /z:320
  insertbmp /p:"%~dp0Images\Batiment\m!id_inv!.bmp" /x:1014 /y:222 /z:320
 )

goto :eof

:noinv
 echo;/c 0x07 /g 125 18 /a 218 /a 196 /a 196 /a 196 /a 196 /a 191 /g 125 19 /a 179 /g 130 19 /a 179 /g 125 20 /a 179 /g 130 20 /a 179 /c 0x07 /g 125 21 /a 192 /a 196 /a 196 /a 196 /a 196 /a 217 /g 115 24 /c 0x08 /d "      Inventaire Vide..    " /g 126 27 /c 0x08 /d " 0" /c 0x08 /d "/" /c 0x08 /d "0  "
 
 insertbmp /p:"%~dp0Images\Ville\nomn.bmp" /x:1005 /y:222 /z:39

 set id_inv=0
 set inv=0

goto :invv

REM -------------------------

:ide
 set sv=0

 call :clsin
 call :testecls

 call :clearenventt

 insertbmp /p:"%~dp0Images\Ville\invfond.bmp" /x:287 /y:140 /z:100

 set count=0
 
 for /f "usebackq tokens=1,2,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set ce=%%b
  set tain=%%c
  set e_%%a=!ce!

  If !ce!==n if !tain!==!tai! (
   set /a count+=1
   If !tai!==2 set zz=39 & set erf=mbb
   If !tai!==3 set zz=100 & set erf=mbbb
   If !tai!==1 set zz=100 & set erf=mb
   insertbmp /p:"%~dp0Images\Ville\!erf!.bmp" /x:!x_%%a! /y:!y_%%a! /z:!zz!
  )

  If !ce!==n if not !tain!==!tai! set e_%%a=no
 )

 If !count!==0 goto noplace

rem ---------------

 echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Veuillez cliquez sur" /g 7 18 /c 0x0e /d "  l'emplacement" /c 0x07 /d " dans" /g 7 20 /d "  lequel vous voulez plac" /a 130 /g 7 22 /c 0x07 /d "  votre" /c 0x03 /d " batiment" /c 0x07 /d "." /g 7 25 /c 0x03 /a 16 /c 0x07 /d " Seul les emplacements" /g 7 27 /c 0x07 /d "  color" /a 130 /d "s en "  /c 0x03 /d "bleu" /c 0x07 /d " sont" /g 7 29 /c 0x07 /d "  disponnible." /g 116 35 /c 0x0e /a 196 /a 16 /c 0x07 /d " Faite votre choix" /c 0x07 /d " ^! " /c 0x0e /a 17 /a 196 /g 116 38 /c 0x03 /a 16 /c 0x07 /d " Vendre pour" /c 0x2 /d " !a1_e%id_inv%_reventePrice!$" /c 0x07 /d " ?" /g 116 41 /c 0x03 /a 16 /c 0x07 /d " Annulez le placement ?" /c 0x02 /g 117 45 /d " Vendre" /a 33 /c 0x07 /g 116 44 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 116 45 /a 179 /g 126 45 /a 179 /c 0x07 /g 116 46 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /c 0x0c /g 131 45 /d " Annuler" /c 0x07 /g 130 44 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 130 45 /a 179 /g 140 45 /a 179 /c 0x07 /g 130 46 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217

:bbmide
 
 
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set a=%%c
  set y=%%b
  set x=%%a
 )

 If !noinv!==3 if !max_count! GTR 0 (

  If !x!==140 if !y!==19 (
   If !curruntcount!==!max_count! ( set curruntcount=1 ) else ( set /a curruntcount+=1 )
   call :algoinv
   If !id_inv! GTR 0 If !id_inv! LSS 11 set tai=2
   If !id_inv! GTR 20 If !id_inv! LSS 26 set tai=1
   If !id_inv! GTR 10 If !id_inv! LSS 21 set tai=3
   goto ide
  )

  If !a!==1 If !x!==116 if !y!==19 (
   If !curruntcount!==1 ( set curruntcount=!max_count! ) else ( set /a curruntcount=!curruntcount!-1 )
   call :algoinv
   If !id_inv! GTR 0 If !id_inv! LSS 11 set tai=2
   If !id_inv! GTR 20 If !id_inv! LSS 26 set tai=1
   If !id_inv! GTR 10 If !id_inv! LSS 21 set tai=3
   goto ide
  )
 )

 If %x% GTR 130 if %x% LSS 138 if %y%==45 goto ville
 
 If %x% GTR 117 if %x% LSS 125 if %y%==45 goto invendre

 If !id_inv! gtr 0 if !id_inv! lss 11 if %x% GTR 126 if %x% LSS 131 if %y% GTR 18 if %y% Lss 21 ( set tai=2
  goto ide
 )

 If !id_inv! gtr 10 if !id_inv! lss 21 if %x% GTR 122 if %x% LSS 132 if %y% GTR 18 if %y% Lss 21 ( set tai=3
  goto ide
 )

 If !id_inv! gtr 20 if !id_inv! lss 26 if %x% GTR 125 if %x% LSS 130 if %y% GTR 18 if %y% Lss 21 ( set tai=1
  goto ide
 )

 rem ---------------------
 
 for /l %%i in (0,1,53) do (
  If !x! GTR !e.%%i.x! if !x! LSS !e.%%i.xmax! if !y! GTR !e.%%i.y! if !y! LSS !e.%%i.ymax! if !e_e%%i!==n (
   set eeinv=%%i
   goto placement
  )
 )
 
 rem ---------------------
 
goto :bbmide

:placement

 for /f "usebackq tokens=1,2,3,4,5 delims=- " %%a in ("!Path_Game!\emplacement.ini") do (
  set d=%%a
  set a=%%b
  set b=%%c
  set c=%%d
  set e=%%e

  If !d!==e!eeinv! ( set a=!id_inv!
   set b=1
  )

 echo;!d!-!a!-!b!-!c!-!e!>>"!Path_Game!\tempp.ini"
 )

 cd "!Path_Game!"
  del /q emplacement.ini
 ren "tempp.ini" "emplacement.ini"
 
rem -----

 for /f "usebackq tokens=1,2 delims=- " %%A in ("!Path_Game!\inventaire.ini") do (
  set ll=%%A
  set kk=%%B
  set ll=!ll: =!
  set kk=!kk: =!

  If !ll!==!id_inv! set /a kk-=1
  If not !kk!==0 echo;!ll!-!kk!>>"!Path_Game!\tempp.ini"
  If !kk!==0 set curruntcount=1
 )

 del /q inventaire.ini
 If exist "!Path_Game!\tempp.ini" ren "tempp.ini" "inventaire.ini"
 
 cd "!in!"

 set inv=1

 goto :ville

:noplace
 echo;/g 7 16 /c 0x03 /a 16 /c 0x07 /d " Tout les" /c 0x03 /d " emplacements" /g 7 18 /c 0x07 /d "  de ce type" /g 7 20 /d "  sont occup" /a 130 /d "es ..." /c 0x07 /d "." /g 116 19 /c 0x0!noinv! /a 17 /g 140 19 /a 16 /g 116 35 /c 0x0e /a 196 /a 16 /c 0x07 /d " Faite votre choix" /c 0x07 /d " ^! " /c 0x0e /a 17 /a 196 /g 116 38 /c 0x03 /a 16 /c 0x07 /d " Vendre pour" /c 0x2 /d " !a1_e%id_inv%_reventePrice!$" /c 0x07 /d " ?" /g 116 41 /c 0x03 /a 16 /c 0x07 /d " Annulez le placement ?" /c 0x02 /g 117 45 /d " Vendre" /a 33 /c 0x07 /g 116 44 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 116 45 /a 179 /g 126 45 /a 179 /c 0x07 /g 116 46 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /c 0x0c /g 131 45 /d " Annuler" /c 0x07 /g 130 44 /a 218 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 191 /g 130 45 /a 179 /g 140 45 /a 179 /c 0x07 /g 130 46 /a 192 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 196 /a 217 /g %l% %cx% /c 0x8E /a 2 /g 21 6 /c 0x03 /g 47 6 /d "%niv%" /g 116 19 /c 0x0!noinv! /a 17 /g 140 19 /a 16 /g 124 25

:bbnomide
 
 for /f "tokens=1,2,3 delims=:" %%a in ('batbox /m') do (
  set a=%%c
  set y=%%b
  set x=%%a
 )

 If !x!==140 if !y!==19 (

  If !curruntcount!==!max_count! ( set curruntcount=1 ) else ( set /a curruntcount+=1 )
   call :algoinv
   If !id_inv! GTR 0 If !id_inv! LSS 11 set tai=2
   If !id_inv! GTR 20 If !id_inv! LSS 26 set tai=1
   If !id_inv! GTR 10 If !id_inv! LSS 21 set tai=3
   goto ide
  )

  If !a!==1 If !x!==116 if !y!==19 (
   If !curruntcount!==1 ( set curruntcount=!max_count! ) else ( set /a curruntcount=!curruntcount!-1 )
   call :algoinv
   If !id_inv! GTR 0 If !id_inv! LSS 11 set tai=2
   If !id_inv! GTR 20 If !id_inv! LSS 26 set tai=1
   If !id_inv! GTR 10 If !id_inv! LSS 21 set tai=3
   goto ide
  )
  
 )

 If %x% GTR 130 if %x% LSS 138 if %y%==45 goto setville
 If %x% GTR 117 if %x% LSS 125 if %y%==45 goto invendre

 If !id_inv! gtr 0 if !id_inv! lss 11 if %x% GTR 126 if %x% LSS 131 if %y% GTR 18 if %y% Lss 21 ( set tai=2
  goto ide
 )

 If !id_inv! gtr 10 if !id_inv! lss 21 if %x% GTR 122 if %x% LSS 132 if %y% GTR 18 if %y% Lss 21 ( set tai=3
  goto ide
 )

 If !id_inv! gtr 20 if !id_inv! lss 26 if %x% GTR 125 if %x% LSS 130 if %y% GTR 18 if %y% Lss 21 ( set tai=1
  goto ide
 )

 If %x% GTR 124 if %x% LSS 132 if %y%==44 (
  set inv=1
  goto :ville
 )

goto :bbnomide

:invendre

 set /a argent+=!a1_e%id_inv%_reventePrice!

 for /f "usebackq tokens=1,2 delims=- " %%A in ("!Path_Game!\inventaire.ini") do (
  set ll=%%A
  set kk=%%B
  set ll=!ll: =!
  set kk=!kk: =!

  If !ll!==!id_inv! set /a kk-=1
  If not !kk!==0 echo;!ll!-!kk!>>"!Path_Game!\tempp.ini"
  If !kk!==0 set curruntcount=1
 )

 cd "!Path_Game!"
  del /q inventaire.ini
  ren "tempp.ini" "inventaire.ini"
 cd "!in!"

 set inv=1
 
goto :ville


rem ---------------------------------------------------------------------------------------------------------------------------

:clearinv
 set "ccl=                   "
 echo;/g 119 16 /d "!ccl!" /g 119 17 /d "!ccl!" /g 119 18 /d "!ccl!" /g 119 19 /d "!ccl!" /g 119 20 /d "!ccl!" /g 119 21 /d "!ccl!" /g 115 24 /c 0x08 /d "                            " /g 126 27 /c 0x08 /d "        "
 
 goto :eof

:clearenventt
 set "clearev=                             "
 echo;/g 114 34 /d "!clearev!" /g 114 35 /d "!clearev!" /g 114 36 /d "!clearev!" /g 114 37 /d "!clearev!" /g 114 38 /d "!clearev!" /g 114 39 /d "!clearev!" /g 114 40 /d "!clearev!" /g 114 41 /d "!clearev!" /g 114 42 /d "!clearev!" /g 114 43 /d "!clearev!" /g 114 44 /d "!clearev!" /g 114 45 /d "!clearev!" /g 114 46 /d "!clearev!" /g 114 47 /d "!clearev!"
 
goto :eof

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:affargent

 If !argent! GTR 0 set cbs=2
 If !argent!==0 set cbs=8
 If !argent! LSS 0 set cbs=C

 set "n0=8"
 set "n1=8"
 set "n2=8"
 set "n3=8"
 set "n4=8"
 set "n5=8"
 set "n6=8"
 set "n7=8"
 set "n8=8"
 set "n9=8"

 If !xp! Gtr 0 set "n0=3"
 If !xp! Gtr 1 set "n1=3"
 If !xp! Gtr 2 set "n2=3"
 If !xp! Gtr 3 set "n3=3"
 If !xp! Gtr 4 set "n4=3"
 If !xp! Gtr 5 set "n5=3"
 If !xp! Gtr 6 set "n6=3"
 If !xp! Gtr 7 set "n7=3"
 If !xp! Gtr 8 set "n8=3"
 If !xp! Gtr 9 set "n9=3"

 echo;-g 17 4 -c 0x02 -d "                    " -g 17 4 -c 0x0!cbs! -d "!argent!$" -c 0x03 -g 47 6 -d "!niv!" -g 17 6 -c 0x0!n0! -a 254 -c 0x0!n1! -a 254 -c 0x0!n2! -a 254 -c 0x0!n3! -a 254 -c 0x0!n4! -a 254 -c 0x0!n5! -a 254 -c 0x0!n6! -a 254 -c 0x0!n7! -a 254 -c 0x0!n8! -a 254 -c 0x0!n9! -a 254

 echo;!vname!/!argent!/!xp!/!niv!>"!Path_Game!\save.data"

goto :eof

rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------
rem -------------------------------------------------------------------------------------------------------------------------

:DrawIni

REM ------------------------------------------------------------------------- Construction for first

 Rem id du batiment - taxe_de_depart - nombre_d'habitant - infosup
 
 If not exist "!Path_Game!\taxe_maison.ini" (
  echo;1-52-2-Grinffin>>"!Path_Game!\taxe_maison.ini"
  echo;2-59-2-Guy>>"!Path_Game!\taxe_maison.ini"
  echo;3-65-2-Simpsons>>"!Path_Game!\taxe_maison.ini"
  echo;4-69-3-Cleavland>>"!Path_Game!\taxe_maison.ini"
  echo;5-74-3-Smith>>"!Path_Game!\taxe_maison.ini"
  echo;6-77-3-Sims>>"!Path_Game!\taxe_maison.ini"
  echo;7-82-3-n>>"!Path_Game!\taxe_maison.ini"
  echo;8-87-4-n>>"!Path_Game!\taxe_maison.ini"
  echo;9-92-4-n>>"!Path_Game!\taxe_maison.ini"
  echo;10-97-4-n>>"!Path_Game!\taxe_maison.ini"
  echo;11-100-4-n>>"!Path_Game!\taxe_maison.ini"
  echo;12-105-4-n>>"!Path_Game!\taxe_maison.ini"
  echo;13-109-5-n>>"!Path_Game!\taxe_maison.ini"
  echo;14-113-5-n>>"!Path_Game!\taxe_maison.ini"
  echo;15-116-5-n>>"!Path_Game!\taxe_maison.ini"
  echo;16-120-6-n>>"!Path_Game!\taxe_maison.ini"
  echo;17-125-6-n>>"!Path_Game!\taxe_maison.ini"
  echo;18-130-6-n>>"!Path_Game!\taxe_maison.ini"
  echo;19-134-7-n>>"!Path_Game!\taxe_maison.ini"
  echo;20-200-23-n>>"!Path_Game!\taxe_maison.ini"
  echo;21-500-1-n>>"!Path_Game!\taxe_maison.ini"
  echo;22-550-1-n>>"!Path_Game!\taxe_maison.ini"
  echo;23-600-1-n>>"!Path_Game!\taxe_maison.ini"
  echo;24-650-1-n>>"!Path_Game!\taxe_maison.ini"
  echo;25-700-1-n>>"!Path_Game!\taxe_maison.ini"
 )

 If not exist "!Path_Game!\inventaire.ini" echo.>"!Path_Game!\inventaire.ini"

 If not exist "!Path_Game!\emplacement.ini" (
  echo;e1-1-1-n-2 >"!Path_Game!\emplacement.ini"
  echo;e2-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e3-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e4-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e5-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e6-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e7-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e8-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e9-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e10-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e11-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e12-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e13-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e14-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e15-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e17-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e18-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e19-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e20-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e21-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e22-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e23-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e25-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e26-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e28-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e29-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e30-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e31-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e32-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e33-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e34-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e35-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e36-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e37-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e38-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e39-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e40-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e41-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e42-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e43-n-n-n-3>>"!Path_Game!\emplacement.ini"
  echo;e44-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e45-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e46-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e47-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e48-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e49-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e50-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e51-n-n-n-2>>"!Path_Game!\emplacement.ini"
  echo;e52-n-n-n-1>>"!Path_Game!\emplacement.ini"
  echo;e53-n-n-n-2>>"!Path_Game!\emplacement.ini"
 )

 If not exist "!Path_Game!\pret.ini" (
  echo;1-6000-n>"!Path_Game!\pret.ini"
  echo;2-12000-n>>"!Path_Game!\pret.ini"
  echo;3-21000-n>>"!Path_Game!\pret.ini"
  echo;4-43000-n>>"!Path_Game!\pret.ini"
  echo;5-69666-n>>"!Path_Game!\pret.ini"
  echo;6-85000-n>>"!Path_Game!\pret.ini"
  echo;7-127000-n>>"!Path_Game!\pret.ini"
  echo;8-193000-n>>"!Path_Game!\pret.ini"
  echo;9-250000-n>>"!Path_Game!\pret.ini"
 )

 If not exist "!Path_Game!\save.data" echo;CityDos/100/1/1 >"!Path_Game!\save.data"

 If not exist "!Path_Game!\bource.ini" (
  echo;1-1-130-2-3-0>"!Path_Game!\bource.ini"
  echo;2-1-145-3-5-0>>"!Path_Game!\bource.ini"
  echo;3-1-180-1-3-0>>"!Path_Game!\bource.ini"
  echo;4-3-285-5-8-0>>"!Path_Game!\bource.ini"
  echo;5-3-255-4-9-0>>"!Path_Game!\bource.ini"
  echo;6-3-300-2-9-0>>"!Path_Game!\bource.ini"
  echo;7-6-200-1-8-0>>"!Path_Game!\bource.ini"
  echo;8-6-300-3-19-0>>"!Path_Game!\bource.ini"
  echo;9-6-350-6-66-0>>"!Path_Game!\bource.ini"
  echo;10-8-400-4-55-0>>"!Path_Game!\bource.ini"
  echo;11-9-420-2-31-0>>"!Path_Game!\bource.ini"
  echo;12-10-x-1-2-0>>"!Path_Game!\bource.ini"
 )

 rem -------------------------------------------------------------------------------------------------------------------------
 rem -------------------------------------------------------------------------------------------------------------------------
 rem ------------------------------------------------------------------------- Fichier de sauvegarde

 If exist "!Path_Game!\save.data" (
  for /f "tokens=1,2,3,4 delims=/" %%a in (!Path_Game!\save.data) do (
   set vname=%%a
   set argent=%%b
   set xp=%%c
   set niv=%%d
   set niv=!niv: =!
  )
 )
 
 set "a=0"
 set "b=1"
 
 for %%i in (421,282,485,282,557,294,317,282,317,222,421,222,517,222,461,162,389,162,317,162,557,150,637,162,701,162,765,162,797,186,x,x,829,162,637,222,733,222,813,222,637,282,669,294,701,306,x,x,749,282,845,282,x,x,317,414,389,414,461,414,517,414,549,426,317,474,389,474,485,474,317,534,381,546,413,534,485,534,645,426,677,426,717,414,813,414,637,474,701,486,733,474,797,486,829,474,637,534,701,546,733,534,797,546,829,534) do (
 
  If !a!==2 ( set a=0 & set /a b+=1 )

  set /a a+=1

  If !a!==1 set x_e!b!=%%~i
  If !a!==2 set y_e!b!=%%~i

 )


 set "a=0"
 set "b=1"

 for %%i in (51,58,22,27,60,65,22,27,68,71,23,26,39,48,22,27,39,48,18,21,52,61,18,21,64,69,18,21,57,66,13,16,48,53,13,16,39,44,13,16,68,71,11,14,79,84,13,16,87,92,13,16,94,97,12,15,98,101,13,16,x,x,x,x,103,108,13,16,79,88,18,21,91,96,18,21,101,110,18,21,78,81,22,25,82,85,23,26,86,89,24,27,x,x,x,x,93,102,23,26,105,110,23,26,x,x,x,x,39,44,34,37,48,53,34,37,57,62,34,37,63,66,33,36,67,70,34,37,39,44,39,42,48,57,39,42,60,69,39,42,39,44,44,47,46,49,44,47,51,56,44,47,60,69,44,47,79,82,34,37,83,86,34,37,89,98,34,37,101,110,34,37,79,84,39,42,86,89,39,42,91,96,39,42,98,101,39,42,103,108,39,42,79,84,44,47,86,89,44,47,91,96,44,47,98,101,44,47,103,108,44,47) do (

  If !a!==4 ( set a=0 & set /a b+=1 )

  set /a a+=1

  If !a!==1 set e.!b!.x=%%~i
  If !a!==2 set e.!b!.xmax=%%~i
  If !a!==3 set e.!b!.y=%%~i
  If !a!==4 set e.!b!.ymax=%%~i

 )
 
 rem e2
 
 set "a=0"
 set "b=1"

 for %%i in (41,44,50,47,57,44,66,47,80,44,85,47,90,44,95,47,100,44,109,47,41,38,50,41,57,38,66,41,80,38,85,41,90,38,95,41,100,38,109,41,41,32,50,35,57,32,66,35,80,32,85,35,90,32,95,35,100,32,109,35,41,25,50,28,59,26,64,29,83,26,92,29,99,25,108,28,41,19,46,22,56,19,65,22,75,19,84,22,92,19,97,22,102,19,107,22,41,13,46,16,56,13,65,16,75,13,84,16,94,13,103,16) do (

  If "!a!"=="4" ( set "a=0"
   set /a "b+=1" )

  set /a "a+=1"

  If "!a!"=="1" set "be.!b!.x=%%i"
  If "!a!"=="2" set "be.!b!.y=%%i"
  If "!a!"=="3" set "be.!b!.xmax=%%i"
  If "!a!"=="4" set "be.!b!.ymax=%%i"

 )
 

 for /f "usebackq tokens=1,2,3,4 delims=- " %%A in ("!Path_Game!\taxe_maison.ini") do (

  set Achat_m%%A=%%B*16

  set a1_e%%A_DailyMoney=%%B
  set /a a1_e%%A_ameliorationPrice=!a1_e%%A_DailyMoney!*4
  set /a a1_e%%A_gainsHypotheque=!a1_e%%A_DailyMoney!*11
  set /a a1_e%%A_rembourcementPrice=!a1_e%%A_gainsHypotheque!*120/100
  set /a a1_e%%A_reventePrice=!a1_e%%A_rembourcementPrice!*110/100

  set /a a2_e%%A_DailyMoney=!a1_e%%A_DailyMoney!+30
  set /a a2_e%%A_ameliorationPrice=!a2_e%%A_DailyMoney!*4
  set /a a2_e%%A_gainsHypotheque=!a2_e%%A_DailyMoney!*11
  set /a a2_e%%A_rembourcementPrice=!a2_e%%A_gainsHypotheque!*120/100
  set /a a2_e%%A_reventePrice=!a2_e%%A_rembourcementPrice!*110/100

  set /a a3_e%%A_DailyMoney=!a2_e%%A_DailyMoney!+30
  set /a a3_e%%A_ameliorationPrice=!a3_e%%A_DailyMoney!*4
  set /a a3_e%%A_gainsHypotheque=!a3_e%%A_DailyMoney!*11
  set /a a3_e%%A_rembourcementPrice=!a3_e%%A_gainsHypotheque!*120/100
  set /a a3_e%%A_reventePrice=!a3_e%%A_rembourcementPrice!*110/100

  set /a a4_e%%A_DailyMoney=!a3_e%%A_DailyMoney!+30
  set /a a4_e%%A_ameliorationPrice=!a4_e%%A_DailyMoney!*4
  set /a a4_e%%A_gainsHypotheque=!a4_e%%A_DailyMoney!*11
  set /a a4_e%%A_rembourcementPrice=!a4_e%%A_gainsHypotheque!*120/100
  set /a a4_e%%A_reventePrice=!a4_e%%A_rembourcementPrice!*110/100

  set /a a5_e%%A_DailyMoney=!a4_e%%A_DailyMoney!+30
  set "a5_e%%A_ameliorationPrice=// "
  set /a a5_e%%A_gainsHypotheque=!a5_e%%A_DailyMoney!*11
  set /a a5_e%%A_rembourcementPrice=!a5_e%%A_gainsHypotheque!*120/100
  set /a a5_e%%A_reventePrice=!a5_e%%A_rembourcementPrice!*110/100

  set e%%A_population=%%C
  set e%%A_description=%%D
  
 )

goto :eof