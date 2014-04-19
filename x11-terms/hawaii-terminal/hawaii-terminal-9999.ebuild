# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="Qt4-based multitab terminal emulator"
HOMEPAGE="https://github.com/qterminal/"

if [[ ${PV} = *9999* ]]; then
	   inherit git-2
	   EGIT_REPO_URI="git://github.com/mauios/hawaii-terminal.git"
	   EGIT_BRANCH="dev"
	   EGIT_HAS_SUBMODULES="Y"
	   KEYWORDS=""
else
	   SRC_URI="https://github.com/mauios/hawaii-terminal/archive/v0.2.0.tar.gz"
	   KEYWORDS="~x86"
	   S="${WORKDIR}/hawaii-terminal-9999"
fi

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE="debug"

DEPEND="
	   dev-qt/qtcore:5
	   dev-qt/qtwidgets:5
	   dev-qt/qtdeclarative:5"
RDEPEND="
	   ${DEPEND}
	   dev-qt/qtquickcontrols:5"

#	x11-libs/qtermwidget"
#RDEPEND="${DEPEND}"

#todo: translations
