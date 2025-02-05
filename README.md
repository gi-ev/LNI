# lni - LaTeX class for submissions to the ``Lecture Notes in Informatics''

```yaml
----------------------------------------------------------------------------
lni -- A class for submissions to the ``Lecture Notes in Informatics''
(c) 2016-2025 Gesellschaft für Informatik (GI)
Version:    2.0
Maintainer: Martin Sievers
Email:      martin.sievers@schoenerpublizieren.de
License:    Released under the LaTeX Project Public License v1.3c or later
See:        https://www.latex-project.org/lppl/
----------------------------------------------------------------------------
```

This is the official version of the class “lni” for submissions to the
“[Lecture Notes in Informatics]” published by the “Gesellschaft für Informatik”
([GI]).
It is based on previous templates created on behalf of the GI.

## Quick start

Download [`lni-author-template.tex`](https://github.com/gi-ev/LNI/blob/main/lni-author-template.tex) and edit it in your favorite LaTeX editor.

## Improved usage

By default [BibTeX](https://www.ctan.org/pkg/bibtex) is used as bibliography tool.
In case you want to use [biblatex](https://www.ctan.org/pkg/biblatex) together with [Biber](https://www.ctan.org/pkg/biber) (strongly recommended), use the specialized package [biblatex-lni](https://ctan.org/pkg/biblatex-lni).
The easiest way is to add `biblatex` as class option - or to directly start at `lni-paper-example-de.tex`.

## Links

- Documentation: [`lni.pdf`](https://gi-ev.github.io/LNI/lni.pdf). It includes a short description how to use the template and also provides troubleshooting hints.
- Changes: [`CHANGELOG.md`](https://github.com/gi-ev/LNI/blob/main/CHANGELOG.md#changelog) for a version history.
- Stable versions: Always uploaded to CTAN and available at <https://www.ctan.org/pkg/lni>.
- Developer repository: <https://github.com/gi-ev/LNI>

The following links are based on the current development state:

- Longer German paper example: [`lni-paper-example-de.tex`](https://github.com/gi-ev/LNI/blob/main/lni-paper-example-de.tex).
  You will also need [`lni-paper-example-de.bib`](https://github.com/gi-ev/LNI/blob/main/lni-paper-example-de.bib).
  The PDF is available at [`lni-paper-example-de.pdf`](https://gi-ev.github.io/LNI/lni-paper-example-de.pdf).
- Rendered `lni-author-template.tex`: [`lni-author-template.pdf`](https://gi-ev.github.io/LNI/lni-author-template.pdf).

## Note

You should use `pdflatex` as `xelatex` and `lualatex` lack some features of the class file.

[GI]: https://gi.de/
[Lecture Notes in Informatics]: https://gi.de/service/publikationen/lni
