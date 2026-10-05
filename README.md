# MiMotor 3D Android 0.2 — proyecto listo para APK

Editor 3D Android en Kotlin + OpenGL ES 2.0.

## Abrir y generar el APK

1. Instala una versión reciente de Android Studio.
2. Descomprime este ZIP.
3. En Android Studio: **File → Open** y selecciona la carpeta `MiMotor3D_Android_0_2` (la que contiene `settings.gradle.kts`).
4. Espera a que termine **Gradle Sync**. La primera vez necesita Internet para descargar Gradle y las dependencias.
5. Pulsa **Build → Build APK(s)**.
6. El APK queda en:
   `app/build/outputs/apk/debug/app-debug.apk`

No necesitas instalar Gradle por separado. El proyecto usa Gradle 8.9 y Android Gradle Plugin 8.7.3.

## Recomendado

Android Studio puede usar el JDK que incluye. El proyecto está configurado para Java/Kotlin 17.

## Qué incluye

- Hierarchy seleccionable
- Inspector
- Transform editable (posición, rotación y escala)
- Material por color hexadecimal
- Guardar/cargar escena local
- Selector para importar OBJ (la lectura de geometría OBJ todavía está pendiente)
- Cámara 3D táctil
- Crear cubos
- Play/Stop

## Nota

El APK de depuración no está incluido en este ZIP porque debe generarse en tu instalación de Android Studio con el SDK Android correspondiente.


## Generar el APK desde el móvil

Este proyecto incluye GitHub Actions en `.github/workflows/build-apk.yml`.
Después de subir el proyecto a un repositorio de GitHub:

1. Abre el repositorio en GitHub.
2. Entra en **Actions**.
3. Selecciona **Generar APK**.
4. Pulsa **Run workflow**.
5. Espera a que termine la compilación.
6. Abre la ejecución terminada y descarga el artefacto **MiMotor3D-APK**.
7. Dentro encontrarás `app-debug.apk`, que puedes instalar en Android.

No necesitas Android Studio para este proceso.
