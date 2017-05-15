# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

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

[Unreleased]: https://github.com/gi-ev/LNI/compare/v1.3...HEAD
[1.3.0]: https://github.com/gi-ev/LNI/releases/tag/v1.3
[1.2.0]: https://github.com/gi-ev/LNI/releases/tag/v1.2
[1.1.0]: https://github.com/gi-ev/LNI/releases/tag/v1.1
[1.0.0]: https://github.com/gi-ev/LNI/releases/tag/v1.0

