# Publicación de las webs Quarto en GitHub Pages

## Estructura recomendada

- Web personal: repositorio `TU_USUARIO.github.io` en tu cuenta personal.
- RENO: repositorio público `reno` en la organización `comes-uclm`.
- CORA: repositorio público `cora` en la organización `comes-uclm`.
- CARLA: repositorio `carla` cuando se decida publicarlo; mientras tanto puede mantenerse local/privado.
- BISHEAR: no modificar el repositorio existente que sirve `https://comes-uclm.github.io/`.

Los archivos fuente (`.qmd`, `_quarto.yml`, `styles.css`, `assets/`, etc.) se guardan en la rama `main`. La carpeta `_site/` NO se sube: Quarto la vuelve a generar. `quarto publish gh-pages` crea y actualiza la rama `gh-pages` con el HTML renderizado.

## Primera publicación de un proyecto

1. Crear en GitHub un repositorio vacío y público. No añadir README, licencia ni `.gitignore` desde la web.
2. Abrir Git Bash o Terminal en la carpeta del proyecto.
3. Ejecutar:

```bash
git init
git branch -M main
git add .
git commit -m "Initial Quarto website"
git remote add origin https://github.com/OWNER/REPOSITORY.git
git push -u origin main
```

4. Publicar:

```bash
quarto publish gh-pages
```

En los sitios de proyecto (`comes-uclm.github.io/reno/`, etc.), GitHub suele detectar automáticamente la rama `gh-pages`. Si no lo hace: Repository > Settings > Pages > Source: Deploy from a branch > Branch: `gh-pages` > `/ (root)` > Save.

## Actualizaciones posteriores

Después de editar y comprobar con `quarto preview`:

```bash
git add .
git commit -m "Update website"
git push
quarto publish gh-pages
```

También puede ejecutarse `PUBLISH_GITHUB_WINDOWS.bat` para el último paso.

## Web personal

El repositorio debe llamarse exactamente `TU_USUARIO.github.io`. Tras el primer `quarto publish gh-pages`, entrar en Settings > Pages y seleccionar manualmente `gh-pages` como rama de publicación, porque los sitios de usuario/organización usan un comportamiento distinto a los sitios de proyecto.
