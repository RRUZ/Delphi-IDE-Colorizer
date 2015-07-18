BRCC32 VersionInfo.rc

echo XE8
call "C:\Program Files (x86)\Embarcadero\Studio\16.0\bin\rsvars.bat"
msbuild.exe "DelphiIDEColorizer_XE8.dproj" /target:Clean;Build /p:Platform=Win32 /p:config=debug
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 GOTO DONE
pause
EXIT


:DONE

pause
EXIT