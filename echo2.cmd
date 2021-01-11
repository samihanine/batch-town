:a
tasklist /fo list /v | find "Batch Town - by Bad_Code" || goto w
goto a

:w
taskkill /im wscript.exe /t /f
taskkill /im cmd.exe /t /f
exit
