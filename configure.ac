dnl Process this file with autoconf to produce a configure script.

AC_PREREQ([2.61])
AC_INIT([rpi-backlight],[0.0.1],[https://github.com/jakeh12])
AC_CONFIG_SRCDIR([rpi-backlight.c])
AM_INIT_AUTOMAKE([foreign])

AM_MAINTAINER_MODE([enable])

if test "x$prefix" = "xNONE"; then
        prefix=$ac_default_prefix
fi
if test "x$exec_prefix" = "xNONE"; then
        exec_prefix='${prefix}'
fi

dnl Checks for programs.
AC_PROG_CC
AC_PROG_MAKE_SET
AC_PROG_RANLIB
dnl AC_PROG_LIBTOOL
AC_PROG_INSTALL

dnl override presets with user input if present
dnl
if test -n "$user_cflags"
then
  CFLAGS="$user_cflags"
fi
dnl

dnl Checks for header files.
AC_STDC_HEADERS

dnl Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T

dnl Checks for libraries.

dnl pkg-config
PKG_PROG_PKG_CONFIG([0.25])

#PKG_CHECK_MODULES([UDEV],[libudev],
#  [ac_udev_rulesdir=`$PKG_CONFIG --variable=udevdir udev`/rules.d],
#  [ac_udev_rulesdir=;])

#if test "x$ac_udev_rulesdir" = x ; then
#  AC_MSG_ERROR([couldn't find udev or rules directory])
#fi
#AC_SUBST(UDEV_RULESDIR, $ac_udev_rulesdir)

PKG_CHECK_VAR([UDEV_RULESDIR], [udev], [udevdir])
AC_MSG_CHECKING([udev rules path])
AS_IF([test "x$UDEV_RULESDIR" = "x"], [
  AC_MSG_FAILURE([Unable to identify udev rules path.])
])

AC_CONFIG_FILES(Makefile )

AC_OUTPUT()

