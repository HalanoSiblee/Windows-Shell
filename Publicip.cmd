::Code By HalanoSiblee
@echo off
if "%1"=="save" (goto save)
if "%1"=="list" (goto list)
if "%1"=="clip" (goto clip)
echo:
echo -------------------------
curl ident.me
echo: 
echo -------------------------
echo:
echo Try publicip clip to save it into clipboard
pause
exit /b
:save
echo: >> Lastip.dat
curl ident.me >> Lastip.dat
echo Public Ip saved.
exit /b
:clip
curl ident.me |clip
exit /b
:list
type lastip.dat
echo:
echo -------------------------------------------------------
