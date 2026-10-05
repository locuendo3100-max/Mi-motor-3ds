#!/bin/sh
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
if [ ! -f "$JAR" ]; then
  echo "Preparando Gradle Wrapper 8.9..."
  if command -v curl >/dev/null 2>&1; then
    curl -fL --retry 3 -o "$JAR" "https://raw.githubusercontent.com/gradle/gradle/v8.9.0/gradle/wrapper/gradle-wrapper.jar" || exit 1
  else
    echo "Necesitas curl o abrir el proyecto en Android Studio." >&2
    exit 1
  fi
fi
exec java -classpath "$JAR" org.gradle.wrapper.GradleWrapperMain "$@"
