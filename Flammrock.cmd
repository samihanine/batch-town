::####~~ Head
  @echo off
  setlocal EnableDelayedExpansion
  
  ::####~~ Window Settings
    title Salut ceci est un easter egg
    color 0f
    set height=40
    set width=120
  ::####~~ End: Window Settings

  mode con cols=!width! lines=!height!
  
  if not exist batbox.exe call :install_batbox
  set "GAME=call :"

  REM TAILLE DU CARRE --->
  set /a square=66
  set /a testsquare=!square!%%2
  if not "!testsquare!"=="0" set /a square+=1

  REM UNE VILLE EN COULEUR C MIEUX XDDD
  set road.width=3
  set road.color=8

  set ground.color=2

  set town.x=CENTER
  set town.y=CENTER
  set /a town.width=!square!-1
  set /a town.height=!square!/2
  
  rem Ceci permet de faire fonctionner le systËme d'eventlistener
  rem bon voir cette variable comme Áa la c'est pas trËs impressionnant mais.......ouai bon c'est pas impressionnant enfait xDD
  set nbhousttmp=0

::####~~ End: Head




::####~~ Body
  for /l %%i in (20,6,!square!) do ( !GAME!_clear_ui_square %%i &set final_size=%%i& echo;CURRENT_SIZE : %%i&echo;Oui, ceci ma prit du temps xDD (2h^) &echo;Click sur les emplacements pour voir les info :^)& !GAME!_draw_ui %%i & set /a town.width=%%i-1&set /a town.height=%%i/2&!GAME!_draw_town )
  !GAME!_draw_town
  :EVENTLISTENER_CLICK
    for /f "tokens=1,2,3 delims=:" %%1 in ('BatBox /m') DO (
      set x=%%1
      set y=%%2
    )
    !GAME!_clear_ui_square2 !final_size! returned true
    for /l %%i in (1,1,!nbhousttmp!) do (
      if !x! GEQ !house.%%i.x! if !x! LSS !house.%%i.xmax! if !y! GEQ !house.%%i.y! if !y! LSS !house.%%i.ymax! (
       !GAME!_draw_info_house %%i
      )
    )
  goto :EVENTLISTENER_CLICK
  pause>nul
  exit
::####~~ End: Body




::####~~ Function
  :_draw_town
    set nbhousttmp=0
    set tmpw=!town.x!
    if /i "!town.x!"=="center" (
      set /a tmpw=!width!/2 - !town.width!/2
    )
    set tmph=!town.y!
    if /i "!town.y!"=="center" (
      set /a tmph=!height!/2 - !town.height!/2
    )
    set towntmp=
    for /l %%i in (0,1,!town.width!) do set "towntmp=!towntmp! "
    !GAME!_draw_ground ground_batbox
    !GAME!_draw_road road_batbox
    set /a house.x=!tmpw!+4&set /a house.y=!tmph!+2&!GAME!_draw_house_emplacement hause_batbox_1 !house.x! !house.y! little&set house.1.price=50 000 piece&set house.1.price2=d'or
    if !square! GEQ 45 (
      set /a house.x=!tmpw!+10&set /a house.y=!tmph!+5&!GAME!_draw_house_emplacement hause_batbox_2 !house.x! !house.y! big&set house.2.price=100 000&set house.2.price2=seaux d'eau xDDD
    )
batbox !ground_batbox! !road_batbox! !hause_batbox_1! !hause_batbox_2!
  goto :eof
  :_addEventListener <x> <y> <width> <height> <type>
    set /a nbhousttmp+=1
    set house.!nbhousttmp!.x=%~1
    set house.!nbhousttmp!.y=%~2
    set /a house.!nbhousttmp!.xmax=%~1+%~3
    set /a house.!nbhousttmp!.ymax=%~2+%~4
    set house.!nbhousttmp!.type=%~5
  goto :eof


  :_draw_house_emplacement <return> <x> <y> <type>
    set batboxtown=
    if /i "%~4"=="little" (
      set /a house.y.2=%~3+1
      set batboxtown=/g %~2 %~3 /d "    " /g %~2 !house.y.2! /d "    "
      !GAME!_addEventListener %~2 %~3 4 2 little
    ) else (
      set /a house.y.2=%~3+1
      set /a house.y.3=%~3+2
      set /a house.y.4=%~3+3
      set batboxtown=/g %~2 %~3 /d "        " /g %~2 !house.y.2! /d "        " /g %~2 !house.y.3! /d "        " /g %~2 !house.y.4! /d "        "
      !GAME!_addEventListener %~2 %~3 8 4 big
    )
    set %~1=/c 0x!road.color!0 !batboxtown! /g 0 0 /c 0x0f
  goto :eof
  :_draw_road <return>
    set /a tmpx=!tmpw!+!town.width!/2-!road.width!/2
    set /a tmpy=!tmph!+!town.height!/2-!road.width!/4
    set /a tmpy2=!tmpy!+!road.width!/2
    set /a rectangle.width=!road.width!*4-3
    set /a rectangle.height=!road.width!*4-3
    set /a rectangle.x=!tmpw!+!town.width!/2-!rectangle.width!/2
    set /a rectangle.y=!tmph!+!town.height!/2-!rectangle.height!/4
    set /a rectangle.ymax=!rectangle.y!+!rectangle.height!/2+1
    set batboxtown=
    set /a townheighttmp=!town.height!+!tmph!
    set roadtmp=
    for /l %%i in (0,1,!road.width!) do set "roadtmp=!roadtmp! "
    for /l %%i in (!tmph!,1,!townheighttmp!) do (
      set batboxtown=!batboxtown! /g !tmpx! %%i /d "!roadtmp!"
    )
    for /l %%i in (!tmpy!,1,!tmpy2!) do (
      set batboxtown=!batboxtown! /g !tmpw! %%i /d "!towntmp!"
    )
    set rectangletmp=
    for /l %%i in (0,1,!rectangle.width!) do set "rectangletmp=!rectangletmp! "
    for /l %%i in (!rectangle.y!,1,!rectangle.ymax!) do (
      set batboxtown=!batboxtown! /g !rectangle.x! %%i /d "!rectangletmp!"
    )
    set %~1=/c 0x!road.color!0 !batboxtown! /g 0 0 /c 0x0f
  goto :eof
  :_draw_ground <return>
    set batboxtown=
    set /a townheighttmp=!town.height!+!tmph!
    for /l %%i in (!tmph!,1,!townheighttmp!) do (
      set batboxtown=!batboxtown! /g !tmpw! %%i /d "!towntmp!"
    )
    set %~1=/c 0x!ground.color!0 !batboxtown! /g 0 0 /c 0x0f
  goto :eof

  :_draw_info_house <NUMBER>
    set /a INFO.y.2=!INFO.y!+1
    set /a INFO.y.3=!INFO.y.2!+1
    set /a INFO.y.4=!INFO.y.3!+1
    set /a INFO.y.5=!INFO.y.4!+1
    set /a INFO.y.6=!INFO.y.5!+1
    set /a INFO.y.7=!INFO.y.6!+1
    set /a INFO.y.8=!INFO.y.7!+1
    set /a INFO.y.9=!INFO.y.8!+1
    batbox /c 0x0f /g !INFO.x! !INFO.y! /d "     Maison %~1" /g !INFO.x! !INFO.y.2! /d "___________________" /g !INFO.x! !INFO.y.4! /d "Type: !house.%~1.type!" /g !INFO.x! !INFO.y.5! /d "Price: !house.%~1.price!" /g !INFO.x! !INFO.y.6! /d "!house.%~1.price2!"
  goto :eof

  :_draw_ui <size>
    set batboxToDraw=
    set echo1=…
    set echo2=»
    set /a squaretmp=%~1/2
    set /a squarew=%~1+1
    set /a tmph=!height!/2 - !squaretmp!/2
    set /a tmph2=!tmph!-1
    set /a tmphmax=!tmph!+!squaretmp!
    set /a tmphmax2=!tmphmax!+1
    set /a tmpw=!width!/2 - %~1/2
    set /a tmpwmax=!tmpw!+!squarew!
    for /l %%i in (!tmph!,1,!tmphmax!) do (
      if not "%%i"=="!tmphmax!" (
        set "echo1=!echo1!ÕÕ"
        set "echo2=!echo2!ÕÕ"
      )
      set "batboxToDraw=!batboxToDraw! /g !tmpw! %%i /a 186 /g !tmpwmax! %%i /a 186"
    )
    set "echo1=!echo1!ª"
    set "echo2=!echo2!º"
    batbox /g !tmpw! !tmph2! & echo;!echo1!
    batbox !batboxToDraw!
    batbox /g !tmpw! !tmphmax2! & echo;!echo2!
    if %~1 GTR 20 !GAME!_draw_ui_info %~1
  goto :eof
  :_draw_ui_info <size>
    set batboxToDraw=
    set echo1=…
    set echo2=»
    set /a squaretmp=%~1/2
    set /a squarew=%~1+1
    set /a tmph=!height!/2 - !squaretmp!/2
    set /a tmph2=!tmph!-1
    set /a tmphmax=!tmph!+!squaretmp!
    set /a tmphmax2=!tmphmax!+1
    set /a tmpw=!width!/2 - %~1/2 - 20
    set /a tmpwmax=!tmpw!+20
    set /a INFO.x=!tmpw!+1
    set INFO.y=!tmph!
    for /l %%i in (!tmph!,1,!tmphmax!) do (
      set /a tmpi=%%i+9
      if !tmpi! GTR !tmphmax! (
        set "echo1=!echo1!ÕÕ"
        set "echo2=!echo2!ÕÕ"
      )
      set "batboxToDraw=!batboxToDraw! /g !tmpw! %%i /a 186 /g !tmpwmax! %%i /a 186"
    )
    set "echo1=!echo1!ÕÀ"
    set "echo2=!echo2!Õ "
    batbox /g !tmpw! !tmph2! & echo;!echo1!
    batbox !batboxToDraw!
    batbox /g !tmpw! !tmphmax2! & echo;!echo2!
  goto :eof
  :_clear_ui_square <size>
    set batboxToDraw=
    set /a squaretmp=%~1/2
    set /a squarew=%~1+1
    set /a tmph=!height!/2 - !squaretmp!/2
    set /a tmph2=!tmph!-1
    set /a tmphmax=!tmph!+!squaretmp!
    set /a tmphmax2=!tmphmax!+1
    set spacesquare=
    set /a tmpw=!width!/2 - %~1/2
    set /a tmpwmax=!tmpw!+!squarew!
    for /l %%i in (0,1,%~1) do set "spacesquare=!spacesquare! "
    for /l %%i in (!tmph!,1,!tmphmax!) do (
      set batboxToDraw=!batboxToDraw! /g !tmpw! %%i /d "!spacesquare!"
    )
    set returned=
    set tmp=!batboxToDraw!
    !GAME!_clear_ui_square2 %~1 returned false
    batbox !tmp! !returned! /g 0 0
  goto :eof
  :_clear_ui_square2 <size> <return> <bool>
    set batboxToDraw=
    set /a squaretmp=%~1/2
    set /a squarew=%~1+1
    set /a tmph=!height!/2 - !squaretmp!/2
    set /a tmph2=!tmph!-1
    set /a tmphmax=!tmph!+!squaretmp!
    set /a tmphmax2=!tmphmax!+1
    set /a tmpw=!width!/2 - %~1/2 - 19
    set /a tmpwmax=!tmpw!+18
    set spacesquare=
    for /l %%i in (!tmpw!,1,!tmpwmax!) do set "spacesquare=!spacesquare! "
    for /l %%i in (!tmph!,1,!tmphmax!) do (
      set batboxToDraw=!batboxToDraw! /g !tmpw! %%i /d "!spacesquare!"
    )
    if "%~3"=="true" (
      batbox !batboxToDraw!
      !GAME!_draw_ui_info %~1
    ) else (
      set %~2=!batboxToDraw!
    )
  goto :eof
::####~~ End: Function



::####~~ Install
  :install_batbox
    for %%b in (
    4D5343460000000073030000000000002C000000000000000301010001000000
    00000000470000000100010000060000000000000000FE4259B5200062617462
    6F782E657865003FD9412724030006434BB5545F485361143F5737F0CF726B3A
    102ABB528B1EC24813421026D3529AB59C184460D7ED6EF7CE79EFB8F74A562F
    0B1D543EF5143DC60483C27AF0C14248B18710A4979ECA40426A0329A1B21ECA
    AF73EE9D4E21B287FAB6DF77CFF99DF37DDFEF3B3B779D1752C001800D5CC018
    808F1C1C3ED879A41015FB9F56C064E942ED141758A8ED96649D4F6A6A4C1306
    F8B0A028AAC1F789BC36A8F0B2C2B79E0DF1036A44ACDB557670638F601B4080
    E3A0C3FBFDDC06B7044EAE9CE34EA2283041C3B505A48E9E450079B99B69C05B
    FC4B1457BC75DD6666DECD8F981BE02EF71797FDC7A32E9A100C7C1EB1E505D9
    2CDD5BC7252AC57F1E92ABCA0771EB21D968029C98E76125D25F9967D1ED838C
    8372D6F24E093AD9175832FFADCAD43C7F8C459F9442D39D1E8C3947C6913F15
    7BB79A7BCD18CBA6D10BB24687B9E33226E4E6904E5DE37A9DE90A3C9C7926F1
    98F48C73E401F2CC731FBD66BAB2335D6E8689B0336A13E6798C76B601772CB6
    F7E2565EEAD64C1589A931C93092B34B2ECE4E1C6BB466EBE82C1DDD4E8A3ED3
    5ED25137B163B861AE9ED8B7D452F182D42F945F4D111213920E14F28B908D57
    B3C61233710903560539A9DA3CD0E257901F6EA600D664019744879B295EE44C
    3F43EF9BFD303A3FD172A61FE13CDABC17FD9BEBB39F5CD7DFD3BDEEF155565D
    6E63B4D8CC0E9EEF910E15745C5D47755EAB32AB245726A20A890C55275B4616
    952417A44035BA71FC8498670A970F3F77CCCD7E2862E3F524D44EBFBB6D741F
    3D46F7A4DF3847E885988B835574AF0EDE4893F9056F1874970F26101F111711
    B6DD3EA8411C472C20A611FD31211C8D0CA89737DAEC4665A1E532F8CA8DA13F
    ED2E7013682FBA7FDFA29DA11E7F57775D6B2000A7DBBACEB4051AEA4D077EE0
    02076E54833881E846488864FEB09DE2D8AAA2113222ED82124988E48744C3AF
    2ABA9A103BF17F6A3BD32D0E192D86A1C97D8386B82DE21FD474550BAABA6CC8
    AA42ABBA4421920F7628C941A385F213A298DCB6AE55D69309E18A79D40C6A9A
    47BC422C2356106B799D7F8AE16D345931A264F5C644232C9916990382AC085A
    4C475F1C920D93EFEF932C4B3734434D00FC02                          
    ) Do >>t.dat (Echo.For b=1 To len^("%%b"^) Step 2
    ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
    Cscript /b /e:vbs t.dat>batbox.ex_
    Del /f /q /a t.dat >nul 2>&1
    Expand -r batbox.ex_ >nul 2>&1
    Del /f /q /a batbox.ex_ >nul 2>&1
  goto :eof
::####~~ End: Install