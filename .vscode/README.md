# Explicacion de porque se usa settings.json

El archivo settings.json se usa para configurar el uso de VSCode con un directorio directo en WSL. El problema es que genera unos procesos de node en la maquina linux que consumen mucha memoria por el sistema de watch de VSCode

# ¿Para qué sirve el archivo `settings.json`?

El archivo `settings.json` en la carpeta `.vscode` se utiliza para definir configuraciones específicas del proyecto en Visual Studio Code. Aquí puedes personalizar opciones como el formato del código, reglas de linting, rutas de intérpretes, variables de entorno y otras preferencias que solo aplicarán a este proyecto, facilitando la colaboración y manteniendo un entorno de desarrollo consistente para todos los miembros del equipo.

### Ejemplo: Excluir archivos y carpetas del sistema de vigilancia

La opción `files.watcherExclude` permite especificar patrones de archivos o carpetas que serán ignorados por el sistema de vigilancia de archivos de VS Code. Esto mejora el rendimiento y evita notificaciones innecesarias sobre cambios en archivos no relevantes para el proyecto.

```json
"files.watcherExclude": {
    "**/node_modules": true,
    "**/.git": true,
    "**/dist": true
}
```

Las claves son patrones glob que identifican archivos o carpetas a excluir. El valor `true` indica que el patrón será excluido del monitoreo. Es útil para carpetas generadas automáticamente, dependencias o archivos temporales.

### Excluir archivos y carpetas del sistema de búsqueda

La opción `search.exclude` permite definir qué archivos o carpetas serán ignorados por la función de búsqueda de VS Code. Esto ayuda a evitar resultados irrelevantes y agiliza las búsquedas dentro del proyecto.

```json
"search.exclude": {
    "**/node_modules": true,
    "**/.git": true,
    "**/dist": true
}
```

Al igual que con `files.watcherExclude`, los patrones especifican qué rutas serán excluidas. Esto es especialmente útil para carpetas con muchos archivos generados o dependencias externas.
