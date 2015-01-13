# Copyright  1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit cmake-utils

DESCRIPTION="Hawaii Desktop File Manager"
HOMEPAGE="http://www.maui-project.org"

if [[ ${PV} = *9999* ]]; then
		inherit git-2
		EGIT_REPO_URI="git://github.com/hawaii-desktop/swordfish.git"
		EGIT_BRANCH="master"
else
		SRC_URI=""
		KEYWORDS="~x86"
fi

SLOT="0"

RDEPEND="${DEPEND}"

DEPEND="
		dev-qt/qtcore:5
		dev-qt/qtgui:5
		dev-qt/qtnetwork:5
		dev-qt/qtwidgets:5
		dev-qt/qtdeclarative:5
		dev-qt/linguist-tools:5"
