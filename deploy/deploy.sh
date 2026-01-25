#!/usr/bin/env bash
set -e

echo "== DEPLOY a ambiente de PRUEBA =="

APP_DIR="env/prueba"
JAR_SOURCE="automatizacion-pruebas/target/*.jar"
JAR_TARGET="$APP_DIR/app.jar"
BACKUP="$APP_DIR/app.jar.bak"

mkdir -p "$APP_DIR"

if [ -f "$JAR_TARGET" ]; then
    echo "Backup existente: creando respaldo..."
    cp "$JAR_TARGET" "$BACKUP"
fi

echo "Copiando nueva versión..."
cp $JAR_SOURCE "$JAR_TARGET"

echo "Deploy completado."
