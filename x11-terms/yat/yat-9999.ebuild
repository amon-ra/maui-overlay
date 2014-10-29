# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit qmake-utils git-2

DESRIPTION="Terminal emulator in C++ and qml"
HOMEPAGE="https://github.com/jorgen/yat"

EGIT_REPO_URI="https://github.com/jorgen/yat.git"
SRC_URI=""
SLOT="0"
KEYWORDS="~x86"
IUSE="debug"

src_configure() {
	   cmake-utils_src_configure
}
#src_configure() {
#		local project_file=$(qmake-utils_find_pro_file)
#		if [[ -n ${project_file} ]]; then
#				eqmake5 "${project_file}"
#		else
#				default
#		fi
#}

#src_install() {
#	einstall DESTDIR="${D}" install
#}
