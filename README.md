# THE ARABXETEX PACKAGE
## v1.2.1

This package provides a convenient ArabTeX-like user-interface for typesetting
languages using the Arabic script in XeLaTeX, with flexible access to font
features. Input in ArabTeX notation can be set in three different vocalization
modes or in roman transliteration. Direct UTF-8 input is also supported, but
users not interested in ArabTeX input notation should rather consider the
package [polyglossia](https://www.ctan.org/pkg/polyglossia). Since most of the
‘real work’ – namely parsing and converting ArabTeX input to Unicode – is done
at the level of TECkit mappings, ArabXeTeX is really performant.

The TECkit fontmapping files (`*.map` and `*.tec`) should be copied to
`<TEXMF>/fonts/misc/xetex/fontmapping/arabxetex/`


### Changes from version 1.1.4:

- Fix problem with plain footnotes (Fix provided by [Enrico Gregorio](http://tex.stackexchange.com/questions/223081/arabxetex-and-footnote))
- Remove obsolete and superfluous parts from documentation
- Default Arabic font is now [Amiri](http://www.amirifont.org/) instead of Scheherazade and Amiri is also used in the documentation.
- Include a pull request from Khaled Hosny: 
  * Improves the documentation and notably clears up the confusion around U+FDF2. 
	  Consequently the options `fdf2alif` and `fdf2noalif` are now *DEPRECATED*, as well as 
	  the commands `\SetAllahWithAlif` and `\SetAllahWithoutAlif`.
  * Fix placement of tanwin fatah
  * Fix handling of end of ayeh symbol in mapping

*NB* From a user perspective there is no difference between 1.2.0 and 1.2.1.

---
François Charette
© 2007–2015

