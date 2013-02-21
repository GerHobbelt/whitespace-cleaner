whitespace-cleaner
==================

This little tool is a quick way to 'rewrite' or otherwise process files' whitespace.

Features:

- removes trailing whitespace
- produces either UNIX or WIn32 compliant line endings
- 'smart' to/from TAB replacement at line leading, hence providing proper indenting whatever you did.

When & Why You Want To Use This Tool
------------------------------------

If you want to detab/entab your text files, source code, etc. and particularly when you like to convert
leading whitespace to TABs *but not always*, i.e. when you want scope/block indentation to show up as TABs
but the remainder of the leading whitespace as SPACES, such as the last few spaces leading up to the
next set of arguments in multi-line argument lists and formatted chucnks in complex comment blocks
with internal indentiation (and no '*', '#' or similar 'comment line leader characters').

When you want to 'pretty print' or reformat your source code, my first (and probably only) stop shop
would be uncrustify, while 'regular' endtab/detab functionality is available in nice editors such
as UltraEdit32 and Notepad++, but they all more or less lack the 'smart conversion to TABs + SPACEs'
that this little bugger can do for ye.


Supported Platforms
------------------

- UNIX (Linux, BSD, ...): a generic Makefile is provided and it should build without complaint anywhere where there's a gcc (GNU C) compiler araound.
- Wondows (Win32/64): a MSVC10 (Microsoft Visual Studio 2010) project is provided to build the wsclean.exe tool
