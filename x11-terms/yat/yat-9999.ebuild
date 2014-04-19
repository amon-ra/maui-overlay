# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 qmake-utils

DESRIPTION="Terminal emulator in C++ and qml"
HOMEPAGE="https://guthub.com/jorgen/yat"

EGIT_REPO_URI="https://github.com/jorgen/yat.git"

SLOT="0"
KEYWORDS="~x86"
IUSE="debug"

src_configure() {
	   if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
	   econf
   fi
	   eqmake5

}
