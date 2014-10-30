# Copyright  1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit cmake-utils

DESCRIPTION="Library for QtQuick applicications"
HOMEPAGE="http://www.maui-project.org"

if [[ ${PV} = *9999* ]]; then
		inherit git-2
		EGIT_REPO_URI="git://github.com/mauios/fluid.git"
		EGIT_BRANCH="dev"
else
		SRC_URI=""
		KEYWORDS="~x86"
fi

SLOT="0"

RDEPEND="${DEPEND}"

DEPEND="
		dev-qt/qtcore:5
		dev-qt/qtdeclarative:5
		dev-qt/qtgui:5
		dev-qt/qtquickcontrols:5"
