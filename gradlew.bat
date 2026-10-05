@echo off
setlocal
set APP_HOME=%~dp0
set JAR=%APP_HOME%gradle\wrapper\gradle-wrapper.jar
if not exist "%JAR%" (
  echo Preparando Gradle Wrapper 8.9...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -UseBasicParsing -Uri 'https://raw.githubusercontent.com/gradle/gradle/v8.9.0/gradle/wrapper/gradle-wrapper.jar' -OutFile '%JAR%'"
  if errorlevel 1 exit /b 1
)
java -classpath "%JAR%" org.gradle.wrapper.GradleWrapperMain %*
endlocal
