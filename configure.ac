AC_PREREQ(2.52)

AC_INIT([Apertium Swedish-Danish], [0.8.1], [apertium-stuff@lists.sourceforge.net], [apertium-swe-dan], [https://wiki.apertium.org/wiki/Apertium-swe-dan])
AM_INIT_AUTOMAKE
AC_PROG_AWK

PKG_CHECK_MODULES(APERTIUM, apertium >= 3.6.0)
PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox >= 3.5.0)
PKG_CHECK_MODULES(CG3, cg3 >= 1.3.0)
PKG_CHECK_MODULES(APERTIUM_LEX_TOOLS, apertium-lex-tools >= 0.2.2)

m4_ifdef([AP_CHECK_LING],[],[AC_MSG_ERROR([AP_CHECK_LING not defined, is apertium.m4 in ACLOCAL_PATH? See: https://wiki.apertium.org/wiki/Installation_troubleshooting])])

AP_CHECK_LING([1], [apertium-swe], [0.8.1])
AP_CHECK_LING([2], [apertium-dan], [0.6.1])

AP_MKINCLUDE

AC_OUTPUT([Makefile])
