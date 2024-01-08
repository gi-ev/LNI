# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/).

## [Unreleased]

## [1.8.1] - 2024-01-08

### Changed
- Option `defaultsups` now active for package `newtxtext`

### Fixed
- Fixed `There's no line here to end.` error for more than two `\affil` calls
- Fixed `\footnote`

## [1.8] - 2023-11-26

### Added

- Added option `anonymous` for anonymizing an article ([#100](https://github.com/gi-ev/LNI/pull/100))
- Added `\pdfoutput=1` to fix compatibility with [arXiv](https://arxiv.org/) ([#81](https://github.com/gi-ev/LNI/issues/81))
- Added more links to `biblatex-lni` to documentation ([#90](https://github.com/gi-ev/LNI/issues/90))
- Added `\yearofpublication` to documentation ([#89](https://github.com/gi-ev/LNI/pull/89))
- New macro `\affil` for an easier way to enter afiliations (see the documentation and lni-paper-example-de.tex for more details)

### Changed

- Improved spacing in and around lists to better match the Word template ([#102](https://github.com/gi-ev/LNI/pull/102))
- Synced title spacing with Word template ([#104](https://github.com/gi-ev/LNI/pull/104))
- (chore) `build.sh` assumes `*.md` are formatted using LF line endings, removed `dos2unix` dependency.
- Improvement for documentation ([#89](https://github.com/gi-ev/LNI/issues/89), [#90](https://github.com/gi-ev/LNI/issues/90), [#93](https://github.com/gi-ev/LNI/issues/93), [#95](https://github.com/gi-ev/LNI/issues/95), [#96](https://github.com/gi-ev/LNI/issues/96))
- Changed delimiter between keywords to comma (,)
- Load `amsmath` explictly
- `author` now holds four arguments to integrate email and ORCID id.

### Fixed

- hyperref option `linktoc` fixed to `all` instead of `both`
- Fixed output in bst files ([#97](https://github.com/gi-ev/LNI/issues/97))
- Hyperlinked bibliographic entries work again ([#107](https://github.com/gi-ev/LNI/issues/107))
- `\footnote` is not used for pdf bookmarks ([#87](https://github.com/gi-ev/LNI/issues/87))
- Footnotes are always set at the bottom of the page ([#122](https://github.com/gi-ev/LNI/issues/122))
- Handling of `fleqn` option for `amsmath`

### Removed

- Removed support for `ccicons`
- Removed option `nohyperref` ([#131](https://github.com/gi-ev/LNI/issues/131))

## [1.7] - 2021-03-02

### Changed

- Change loading of latest ngerman hyphenation patterns ([#47](https://github.com/gi-ev/LNI/issues/47))
- Change `\year` to `\yearofpublication` to avoid problems ([#85](https://github.com/gi-ev/LNI/issues/85))

### Fixed

- Fix setting of pdf metadata ([#87](https://github.com/gi-ev/LNI/issues/87))

## [1.6] - 2019-10-14

### Added

- Optional argument for `\booktitle` to support a short book title for running headers
- New macro `\booksubtitle`
- Add support for `selnolig` (LuaTeX-only)

### Changed

- `\email` now generates a `mailto:` hyperlink
- Example file: `align` instead of `eqnarray`
- Add `driver=none` option to `geometry` for better crop results (independent from engine)

### Fixed

- Global options are passed to `article` class ([#78](https://github.com/gi-ev/LNI/issues/78))
- Finally fix BiBTeX issue thanks to @ytzemih ([#6](https://github.com/gi-ev/LNI/issues/6))
- `hyperref` is loaded without options to make it more compatible with other packages like `authorarchive`
- `hypcap` is only loaded if `hyperref` has been loaded before.

## [1.5] - 2019-04-04

### Added

- Load package `textcomp` by default and add option `upquote` to `listings` package ([#69](https://github.com/gi-ev/LNI/issues/69))
- New option `norunningheads` to remove all running headers from the document
([#77](https://github.com/gi-ev/LNI/issues/77))

### Changed

- `\refname` changed to `Bibliography` for English texts

### Fixed

- German paper example: Correct language `Java` at example listing
- Packages `hyperef`, `cleveref` and `hypcap` are always at the end of the preamble ([#71](https://github.com/gi-ev/LNI/issues/71))
- Option `bookmarks` of `hyperref` now set at load-time. Had no effect before.
- Layout for English texts (subtitle)
- URL for GI in example file

## [1.4] - 2018-01-15

### Added

- New option `oldfonts` to use the class file on older systems by loading the `mathptmx` font package ([#56](https://github.com/gi-ev/LNI/issues/56))
- New macros added (taken from `emisa.dtx`) ([#57](https://github.com/gi-ev/LNI/issues/57))
- Hint to word limit for abstract ([#60](https://github.com/gi-ev/LNI/issues/60))
- Full example for an article in German ([#63](https://github.com/gi-ev/LNI/issues/63))

### Changed

- Package `caption` is loaded in order to make the class more robust ([#59](https://github.com/gi-ev/LNI/issues/59))

### Fixed

- Basewidth for `lstlistings` ([#62](https://github.com/gi-ev/LNI/issues/62))
- Adapting captions of `lstlistings`
- License statement of paper: CC-BY-SA instead of CC-BY-NC ([#67](https://github.com/gi-ev/LNI/issues/67))
- Font size for `\large`
- Font size bug regarding the running header and the captions

## [1.3] - 2017-05-15

### Added

- New option `nofonts` to use the class file on older systems ([#53](https://github.com/gi-ev/LNI/issues/53))

### Changed

- Use more stable syntax for font loading with `fontspec` ([#54](https://github.com/gi-ev/LNI/issues/54))

## [1.2] - 2017-05-05

### Added

- Quick start section for README.md ([#48](https://github.com/gi-ev/LNI/issues/48))
- New macro `\lnidoi` to add DOI to pages (DOI provided by editor)
- General (partial) support for `XeTeX` and `LuaTeX` using the `iftex` package ([#51](https://github.com/gi-ev/LNI/issues/51))

### Changed

- Option `straightquotes` is set manually for package `newtxtt` to gain compatibility with versions prior to v1.05 ([#49](https://github.com/gi-ev/LNI/issues/49))

## [1.1] - 2017-04-19

### Added

- New macro `\subtitle` ([#44](https://github.com/gi-ev/LNI/issues/44))
- New keyword delimiter `\and` ([#43](https://github.com/gi-ev/LNI/issues/43))
- New files CHANGELOG.md and CONTRIBUTING.md
- New option `crop` for crop marks
- Check for latest German hyphenation patterns ([#47](https://github.com/gi-ev/LNI/issues/47))

### Changed

- CTAN script to include new files
- Documentation

### Fixed

- Definition of `\Crefname` to always gets "Abb." instead of "ABB." etc. ([#45](https://github.com/gi-ev/LNI/pull/45))

## [1.0] - 2017-04-07

First release of the revised files

[Unreleased]: https://github.com/gi-ev/LNI/compare/v1.8.1...HEAD
[1.8]: https://github.com/gi-ev/LNI/compare/v1.8...v1.8.1
[1.8]: https://github.com/gi-ev/LNI/compare/v1.7...v1.8
[1.7]: https://github.com/gi-ev/LNI/compare/v1.6...v1.7
[1.6]: https://github.com/gi-ev/LNI/compare/v1.5...v1.6
[1.5]: https://github.com/gi-ev/LNI/compare/v1.4...v1.5
[1.4]: https://github.com/gi-ev/LNI/compare/v1.3...v1.4
[1.3]: https://github.com/gi-ev/LNI/compare/v1.2...v1.3
[1.2]: https://github.com/gi-ev/LNI/compare/v1.1...v1.2
[1.1]: https://github.com/gi-ev/LNI/compare/v1.0...v1.1
[1.0]: https://github.com/gi-ev/LNI/releases/tag/v1.0
