PHP_ARG_ENABLE([cligen],
  [whether to enable cligen support],
  [AS_HELP_STRING([--with-cligen],
    [Include cligen support])],
  [no])

if test "$PHP_CLIGEN" != "no"; then
  dnl Write more examples of tests here...

  dnl Remove this code block if the library does not support pkg-config.
  dnl PKG_CHECK_MODULES([LIBFOO], [foo])
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBS, CLIGEN_SHARED_LIBADD)

  dnl If you need to check for a particular library version using PKG_CHECK_MODULES,
  dnl you can use comparison operators. For example:
  dnl PKG_CHECK_MODULES([LIBFOO], [foo >= 1.2.3])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo < 3.4])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo = 1.2.3])

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-cligen -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/cligen.h"  # you most likely want to change this
  dnl if test -r $PHP_CLIGEN/$SEARCH_FOR; then # path given as parameter
  dnl   CLIGEN_DIR=$PHP_CLIGEN
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for cligen files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       CLIGEN_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$CLIGEN_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the cligen distribution])
  dnl fi

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-cligen -> add include path
  dnl PHP_ADD_INCLUDE($CLIGEN_DIR/include)

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-cligen -> check for lib and symbol presence
  dnl LIBNAME=CLIGEN # you may want to change this
  dnl LIBSYMBOL=CLIGEN # you most likely want to change this

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   AC_DEFINE(HAVE_CLIGEN_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your cligen library.])
  dnl ], [
  dnl   $LIBFOO_LIBS
  dnl ])

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are not using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $CLIGEN_DIR/$PHP_LIBDIR, CLIGEN_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_CLIGEN_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your cligen library.])
  dnl ],[
  dnl   -L$CLIGEN_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(CLIGEN_SHARED_LIBADD)

  dnl In case of no dependencies
  AC_DEFINE(HAVE_CLIGEN, 1, [ Have cligen support ])

  PHP_ADD_LIBRARY(cligen,, CLIGEN_SHARED_LIBADD)

  PHP_NEW_EXTENSION(cligen, cligen_wrap.c, $ext_shared)
  PHP_SUBST(CLIGEN_SHARED_LIBADD)
  PHP_ADD_MAKEFILE_FRAGMENT()
fi
