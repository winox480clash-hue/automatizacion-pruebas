#!/usr/bin/env bash
set -e

echo "== ACCEPTANCE TESTS =="

if ls automatizacion-pruebas/target/*.jar 1> /dev/null 2>&1; then
    echo "OK: JAR generado."
else
    echo "FAIL: No se encontró JAR en target."
    exit 1
fi

if [ -f automatizacion-pruebas/pom.xml ]; then
    echo "OK: pom.xml existe."
else
    echo "FAIL: No se encontró pom.xml."
    exit 1
fi

echo "Acceptance tests completados OK."
