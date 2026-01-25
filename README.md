# Automatización de Pruebas - Examen Final

Repositorio del examen final de la asignatura Automatización de Pruebas.

## Actividad 1: Git + Maven
- Se creó el repositorio en GitHub y se trabajó sobre la rama principal `main` (enfoque Trunk-Based).
- Se generó un proyecto Maven con estructura estándar.
- Se configuró el archivo `pom.xml` para pruebas automatizadas.

### Ejecutar pruebas localmente
Desde la carpeta del proyecto Maven:
- Ruta: `automatizacion-pruebas/`
- Comando:
  - `mvn test`

## Actividad 2: Pipeline CI (GitHub Actions)
- Pipeline CI versionado en: `.github/workflows/ci.yml`
- Etapas: compilación y ejecución de pruebas automatizadas con Maven.
- Evidencia: ejecución en verde en la pestaña Actions.

## Actividad 3: Deployment pipeline + acceptance tests + rollback
- Workflow de despliegue versionado en: `.github/workflows/deploy.yml`
- Scripts utilizados:
  - `deploy/acceptance.sh`
  - `deploy/deploy.sh`
  - `deploy/rollback.sh`
- El pipeline ejecuta build, pruebas, acceptance tests y despliegue a ambiente de prueba.
- Incluye mecanismo de rollback ante fallos, evidenciado en logs de GitHub Actions.

## Evidencias
Las capturas de ejecución se adjuntan en el documento Word entregado en plataforma.
