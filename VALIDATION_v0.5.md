# Validation v0.5

Checks performed in the build environment:

- `_quarto.yml` parsed as valid YAML.
- Every `.qmd` was passed through Pandoc 3.1.11.1 and checked to ensure custom HTML is not converted to escaped `<pre><code>` blocks.
- News listings use explicit language-local globs.
- CARLA is not rendered in the personal Projects page.
- A white-background version of the micromechanical damage image is included and referenced.

Final `quarto preview` / `quarto render` should be executed with the local Quarto installation.
