# HDI_ObjectNotationDatasource

A 4D **HDI** (How Do I) example demonstrating how **object notation** can be used to read and format data straight from a `[Table]` selection/entity, without intermediate variables. Originally distributed as a binary `.4DB` database, it has been converted to the modern 4D project (`.4DProject`) architecture and modernised for current 4D language conventions with the help of **GitHub Copilot**.

## What this demonstrates

- Using dotted **object notation** (`[Person]OB_Field.Firstname`) directly as a list box column/expression source, instead of a form-bound process variable.
- Row- and column-level list box formatting driven by object-notation expressions (background color, font color, style), editable live from the demo form.
- A minimal splash → demo window navigation pattern (`00_Start` → `HDI` → `HDI2`).

## Project structure

| Path | Contents |
|------|----------|
| `Project/Sources/Methods/` | Project (subroutine) methods: startup, list box column/row expression helpers, record selection. |
| `Project/Sources/Forms/HDI/` | Splash screen form and its method/object methods. |
| `Project/Sources/Forms/HDI2/` | Main demo form: the object-notation list box, per-column/row style expressions, and person/children detail panes. |
| `Project/Sources/TableForms/1/`, `.../2/` | Default input/output forms for the `Person` and `Samples` tables used by the demo. |
| `Project/Sources/menus.json` | Menu bar definition (File/Edit/Mode), using standard actions where applicable. |
| `Project/Sources/styleSheets*.css` | Cross-platform and macOS/Windows-specific form stylesheets (dark mode, Liquid Glass button sizing). |
| `Resources/{lang}.lproj/*.xlf` | XLIFF translation files (English source + Japanese), grouped by menu/form. |

## Points of interest (modernisation)

This codebase has been brought up to current 4D conventions:

- **Object notation, everywhere it counts** — the list box columns and their style/format expressions are the actual subject of the demo and are intentionally left as literal 4D expressions (e.g. `[Person]OB_Field.Firstname`), not translated or renamed.
- **Localisation** — all genuine UI chrome (menu titles, button labels, captions) uses `:xliff:` references backed by XLIFF files under `Resources/`; demo-specific object-notation expressions and code samples are left untouched since they are the content being demonstrated, not translatable prose.
- **Modern variable declarations** — legacy `C_LONGINT`/`C_TEXT`/etc. directives have been replaced with `var`/`#DECLARE`.
- **Modern startup pattern** — `00_Start` uses `#DECLARE`, `CALL WORKER` (instead of `New process`), non-blocking `DIALOG(...; *)`, and splash-window reuse detection.
- **Standard menu actions** — one-line method wrappers (e.g. a `Quit` method) have been replaced with built-in standard actions (`"action": "quit"`) where a wrapper added no value.
- **Dark mode & Liquid Glass** — forms use `"automatic"`/`"automaticAlternate"` colors and `prefers-color-scheme`/`form-theme` media queries instead of hardcoded hex colors, so the UI adapts to system appearance and to macOS Tahoe's Liquid Glass button styling.
- **List box display defaults** — `truncateMode: "none"` and `resizingMode: "legacy"` are set explicitly rather than relying on version-dependent defaults.

## Requirements

- 4D 21 or later (project uses `compatibilityVersion: 2101`).

## Getting started

1. Open `Project/HDI_ObjectNotationDatasource.4DProject` in 4D.
2. Run the `00_Start` method (or use the **File > Demo...** menu item) to open the splash screen, then click **Demo** to open the main list box demo.

## References

- **Blog post:** https://blog.4d.com/discover-how-object-notation-can-simplify-your-developers-life/
- **Original download:** https://download.4d.com/Demos/4D_v16_R4/HDI_ObjectNotationDatasource.zip
- **Object notation in expression properties:** https://developer.4d.com/docs/FormObjects/propertiesReference
