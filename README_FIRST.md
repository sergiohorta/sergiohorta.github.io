# Sergio Horta Muñoz — Quarto academic website · v0.3

This folder contains the complete editable source of the website.

## Quick preview

### Windows
Double-click:

`PREVIEW_WINDOWS.bat`

### Terminal
Run:

```bash
quarto check
quarto preview
```

Quarto will open a local URL such as `http://localhost:xxxx/`. Nothing is published on the Internet at this stage.

## Main structure

English is the main version:

- `index.qmd`
- `research.qmd`
- `projects.qmd`
- `publications.qmd`
- `teaching.qmd`
- `news.qmd`
- `about.qmd`
- `contact.qmd`

The alternative Spanish version is under:

- `es/`

Both versions share photographs, logos, bibliography and visual design.

## Files you will edit most often

- `_quarto.yml` — navigation and global configuration.
- `styles.css` — visual design.
- `references.bib` — publication database.
- `assets/photos/` — photographs.
- `assets/logos/` — institutional/group logos.
- `news/` and `es/news/` — news entries.
- `assets/language-nav.html` — small script that switches the navbar and language link between EN/ES.

## Render the complete static site

```bash
quarto render
```

The output is created in `_site/`. Do not edit `_site/` manually.

## Current language behaviour

English remains the default site. The `ES` button in the navigation bar opens the Spanish equivalent of the current main page. In Spanish it changes to `EN`.

## Publishing later with GitHub Pages

Once the local version is approved:

1. Create a public GitHub repository.
2. Commit this source folder.
3. Run `quarto publish gh-pages`.
4. Select `gh-pages` as the Pages branch if GitHub does not do so automatically.

We can perform that step together once the content/design is considered ready.
