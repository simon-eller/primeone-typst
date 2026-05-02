# PrimeOne Typst Template
A clean, modern Typst template for [Typst](https://typst.app/) and [Quarto](https://quarto.org/) documents. Designed with a consistent design system, themeable colors, and a rich set of ready-to-use components.

![License](https://img.shields.io/badge/license-MIT-blue)
![Typst](https://img.shields.io/badge/typst-compatible-orange)
![Quarto](https://img.shields.io/badge/quarto-compatible-blue)

---

## Features
- **7 built-in color themes** — cyan, purple, green, blue, teal, indigo, pink
- **Themeable design system** — all colors are defined as variables and applied consistently
- **Custom components** — badge, card, panel, message, messages, checkbox
- **Quarto-native integration** — overrides Quarto's table and Skylighting code block rendering
- **Automatic title page** — with title, subtitle, authors, date, and abstract
- **Optional table of contents**
- **Styled footer** — with author list and page numbers

## Preview
> See `template.typ` for a full component showcase with sample content.

## Getting Started
### Requirements

- [Typst](https://typst.app/) `>= 0.11`
- [Quarto](https://quarto.org/) `>= 1.4`
- Fonts: **Inter**, **Liberation Mono**, **Liberation Sans**, **Material Symbols Rounded Filled**

### Installation
#### Quarto
1. Clone or download this repository into your Quarto project folder.
2. Reference the template in your `.qmd` file's YAML front matter:

```yaml
---
title: "My Document"
subtitle: "A subtitle"
author:
  - name: Jane Doe
    affiliation: University of Example
    email: jane@example.com
date: today
format:
  typst:
    template: template.typ
---
```

## Switching Themes
Open `typst-template.typ` and change the active theme near the top of the file:

```typst
// Available themes:
// theme-lara-cyan | theme-lara-purple | theme-lara-green
// theme-lara-blue | theme-lara-teal   | theme-lara-indigo | theme-lara-pink

#let _active-theme = theme-lara-pink  // ← change this
```

## Components
All components are available globally once the template is imported.

### `badge`
Inline status badge with severity styling.

```typst
#badge("New", severity: "success")
#badge("Deprecated", severity: "warning")
#badge("Error", severity: "error")
#badge("Info", severity: "info")
#badge("Neutral", severity: "neutral")
```

### `card`
Content card with optional title, subtitle, image, and footer.

```typst
#card(
  title: "Card Title",
  subtitle: "Optional subtitle",
  footer: "Footer text",
)[
  Card body content goes here.
]
```

### `panel`
Simple bordered container with an optional header bar.

```typst
#panel(title: "Panel Title")[
  Panel content goes here.
]
```

### `message`
Compact inline-style alert with an icon.

```typst
#message(severity: "info")[This is an informational message.]
#message(severity: "success")[Operation completed successfully.]
#message(severity: "warn")[Please review before continuing.]
#message(severity: "error")[Something went wrong.]
```

### `messages`
Full-width alert block with an optional title and left accent bar.

```typst
#messages(severity: "warn", title: "Warning")[
  This action cannot be undone.
]
```

### `checkbox`
Static checkbox for use in checklists or forms.

```typst
#checkbox(label: "Accept terms", checked: true)
#checkbox(label: "Subscribe to newsletter", checked: false)
#checkbox(label: "Disabled option", disabled: true)
```

## Article Parameters
The main `article()` function accepts the following parameters via Quarto's YAML front matter:

| Parameter            | Default       | Description                        |
|----------------------|---------------|------------------------------------|
| `title`              | `none`        | Document title                     |
| `subtitle`           | `none`        | Document subtitle                  |
| `authors`            | `none`        | List of author objects             |
| `date`               | `none`        | Publication date                   |
| `abstract`           | `none`        | Abstract text                      |
| `abstract-title`     | `none`        | Abstract section heading           |
| `cols`               | `1`           | Number of content columns          |
| `margin`             | `(x/y: 20mm)` | Page margins                       |
| `paper`              | `"a4"`        | Paper size                         |
| `lang`               | `"en"`        | Document language                  |
| `font`               | `"Inter"`     | Body font                          |
| `fontsize`           | `1em`         | Base font size                     |
| `title-size`         | `3em`         | Title font size                    |
| `subtitle-size`      | `2em`         | Subtitle font size                 |
| `heading-family`     | `"Inter"`     | Heading font family                |
| `heading-size`       | `1.5em`       | H1 size (H2/H3 scale from this)    |
| `heading-weight`     | `"semibold"`  | Heading font weight                |
| `sectionnumbering`   | `none`        | Typst section numbering pattern    |
| `pagenumbering`      | `"1"`         | Typst page numbering pattern       |
| `titlepage`          | `true`        | Show title page                    |
| `toc`                | `false`       | Show table of contents             |
| `toc_title`          | `none`        | TOC heading                        |
| `toc_depth`          | `none`        | TOC depth                          |
| `toc_indent`         | `1.5em`       | TOC indentation                    |

## Attribution
The color palette, theme naming convention and layout of the components used in this template (e.g. `theme-lara-cyan`, severity colors) are inspired by the [PrimeReact](https://primereact.org/) Lara UI themes, which is developed by [PrimeTek](https://www.primetek.com.tr/) and distributed under the [MIT License](https://github.com/primefaces/primereact/blob/master/LICENSE.md).

This template is an independent Typst/Quarto implementation and is not affiliated with, endorsed by, or derived from the PrimeReact source code. Only the visual design language (color values and naming) served as inspiration.
