reg add "HKCU\Software\Classes\SystemFileAssociations\.as2proj\shell\subtitle" /f /ve /t REG_SZ /d "Build as SWL mod"
reg add "HKCU\Software\Classes\SystemFileAssociations\.as2proj\shell\subtitle\command" /f /ve /t REG_EXPAND_SZ /d "\"%~dp0build.bat\" \"%%1\" pause"
pause