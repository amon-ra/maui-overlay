# Copyright  1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="Library shared among Hawaii Shell and other related applications."
HOMEPAGE="https://github.com/mauios/libhawaii"

if [[ ${PV} = *9999* ]]; then
		inherit git-2
		EGIT_REPO_URI="git://github.com/mauios/libhawaii.git"
		EGIT_BRANCH="dev"
else
		SRC_URI=""
		KEYWORDS="~x86"
fi

SLOT="0"
IUSE="debug"

RDEPEND="${DEPEND}"
DEPEND="
		dev-qt/qtcore:5
		dev-qt/qtdeclarative:5
		dev-libs/extra-cmake-modules"

src_configure() {
	   cmake-utils_src_configure
}
