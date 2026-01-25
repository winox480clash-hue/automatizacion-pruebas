#!/usr/bin/env bash
set -e

echo "== ROLLBACK en ambiente de PRUEBA =="

APP_DIR="env/prueba"
JAR_TARGET="$APP_DIR/app.jar"
BACKUP="$APP_DIR/app.jar.bak"

if [ -f "$BACKUP" ]; then
    echo "Restaurando respaldo..."
    cp "$BACKUP" "$JAR_TARGET"
    echo "Rollback completado."
else
    echo "No existe backup para rollback."
    exit 1
fi
