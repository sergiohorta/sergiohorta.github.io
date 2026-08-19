# Guía paso a paso — web personal v0.3

## 1. Descomprime el ZIP

Descomprime `sergio_horta_web_quarto_v0.3.zip` en una carpeta estable, por ejemplo:

`Documentos/web-sergio/`

No trabajes directamente dentro del ZIP.

## 2. Abre la web en local

En Windows, haz doble clic en:

`PREVIEW_WINDOWS.bat`

El archivo ejecutará primero `quarto check` y después `quarto preview`.

Si prefieres hacerlo desde PowerShell o una terminal:

```bash
quarto check
quarto preview
```

Se abrirá una dirección local parecida a:

`http://localhost:xxxx/`

La web sigue sin estar publicada en Internet.

## 3. Comprueba las dos versiones

La versión principal es la inglesa.

En la barra superior aparece un botón `ES`. Púlsalo para abrir la versión española. En las páginas españolas el botón cambia a `EN`.

Revisa especialmente:

1. Home / Inicio.
2. Research / Investigación.
3. Projects / Proyectos.
4. Publications / Publicaciones.
5. Teaching / Docencia.
6. News / Novedades.
7. About / Perfil.
8. Contact / Contacto.

## 4. Comprueba el nuevo diseño

Esta versión incorpora:

- nueva fotografía principal de la máquina biaxial Servosis;
- bloque de logos UCLM, EIIA-To, COMES y TRAMES con enlaces;
- investigación presentada mediante bloques visuales;
- sección específica de cortadura, destacando el ensayo asociado a UNE 0074:2023;
- fotografías de Iosipescu y V-notched shear;
- proyectos con imágenes;
- nueva selección de publicaciones destacadas;
- actualización de perfiles académicos;
- nuevas imágenes en noticias;
- versión alternativa completa en español.

## 5. Editar texto

Abre cualquier `.qmd` con Visual Studio Code, Notepad++ o Bloc de notas.

Ejemplo:

`research.qmd`

Guarda el archivo. Si `quarto preview` sigue ejecutándose, el navegador debería actualizarse automáticamente.

## 6. Editar la versión española

Los archivos equivalentes están dentro de:

`es/`

Por ejemplo:

- inglés: `research.qmd`
- español: `es/research.qmd`

## 7. Fotografías y logos

Las imágenes utilizadas están en:

`assets/photos/`

Los logos están en:

`assets/logos/`

No es necesario tocar `styles.css` para cambiar una fotografía: basta con sustituir el archivo o cambiar su ruta en el `.qmd`.

## 8. Publicaciones

Los trabajos destacados se editan manualmente en:

`publications.qmd`

y

`es/publications.qmd`

El listado bibliográfico completo se genera a partir de:

`references.bib`

## 9. Noticias

Cada noticia está en su propia carpeta:

`news/...`

La versión española equivalente está en:

`es/news/...`

Las páginas `news.qmd` generan automáticamente las tarjetas.

## 10. Generar la web completa

En Windows:

`RENDER_WINDOWS.bat`

o desde terminal:

```bash
quarto render
```

El resultado final se genera en `_site/`.

## 11. Si aparece un error

Cópia y pégame el texto completo de la terminal. No hace falta intentar corregirlo a mano.

## 12. GitHub

Todavía podemos seguir afinando diseño y contenido en local. Cuando demos esta fase por buena, el siguiente paso será publicar la web principal en GitHub Pages y después reutilizar la misma identidad gráfica para las webs de RENO y CORA.
