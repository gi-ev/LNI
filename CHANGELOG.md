# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [1.6.0] - 2019-10-14

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

## [1.5.0] - 2019-04-04

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

## [1.4.0] - 2018-01-15

### Added
- New option `oldfonts` to use the class file on older systems by loading the `mathptmx` font package ([#56](https://github.com/gi-ev/LNI/issues/56))
- New macros added (taken from `emisa.dtx`) ([#57](https://github.com/gi-ev/LNI/issues/57))
- Hint to word limit for abstract ([#60](https://github.com/gi-ev/LNI/issues/60))
- Added full example for an article in German ([#63](https://github.com/gi-ev/LNI/issues/63))

### Changed
- Package `caption` is loaded in order to make the class more robust ([#59](https://github.com/gi-ev/LNI/issues/59))

### Fixed
- Basewidth for `lstlistings` ([#62](https://github.com/gi-ev/LNI/issues/62))
- Adapting captions of `lstlistings`
- License statement of paper: CC-BY-SA instead of CC-BY-NC ([#67](https://github.com/gi-ev/LNI/issues/67))

## [1.3.0] - 2017-05-15

### Added
- New option `nofonts` to use the class file on older systems ([#53](https://github.com/gi-ev/LNI/issues/52))

### Changed
- Use more stable syntax for font loading with `fontspec` ([#54](https://github.com/gi-ev/LNI/issues/54))


## [1.2.0] - 2017-05-05

### Added
- Quick start section for README.md ([#48](https://github.com/gi-ev/LNI/issues/48))
- New macro `\lnidoi` to add DOI to pages (DOI provided by editor)
- General (partial) support for `XeTeX` and `LuaTeX` using the `iftex` package ([#51](https://github.com/gi-ev/LNI/issues/51))

### Changed
- Option `straightquotes` is set manually for package `newtxtt` to gain compatibility with versions prior to v1.05 ([#49](https://github.com/gi-ev/LNI/issues/49))


## [1.1.0] - 2017-04-19

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
- Definition of `\Crefname` to always get "Abb." instead of "ABB." etc. ([#45](https://github.com/gi-ev/LNI/pull/45))


## [1.0.0] - 2017-04-07
First release of the revised files

[Unreleased]: https://github.com/gi-ev/LNI/compare/v1.6...HEAD
[1.6.0]: https://github.com/gi-ev/LNI/releases/tag/v1.6
[1.5.0]: https://github.com/gi-ev/LNI/releases/tag/v1.5
[1.4.0]: https://github.com/gi-ev/LNI/releases/tag/v1.4
[1.3.0]: https://github.com/gi-ev/LNI/releases/tag/v1.3
[1.2.0]: https://github.com/gi-ev/LNI/releases/tag/v1.2
[1.1.0]: https://github.com/gi-ev/LNI/releases/tag/v1.1
[1.0.0]: https://github.com/gi-ev/LNI/releases/tag/v1.0
