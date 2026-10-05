@echo off
cd /d "%~dp0"
echo Generando APK de MiMotor 3D...
gradlew.bat assembleDebug
if errorlevel 1 (
  echo.
  echo ERROR: No se pudo generar el APK.
  pause
  exit /b 1
)
echo.
echo APK generado en:
echo %CD%\app\build\outputs\apk\debug\app-debug.apk
pause
