# Copyright  1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit cmake-utils

DESCRIPTION="Wallpapers for Hawaii desktop environment"
HOMEPAGE="http://www.maui-project.org"

if [[ ${PV} = *9999* ]]; then
		inherit git-2
		EGIT_REPO_URI="git://github.com/mauios/hawaii-wallpapers.git"
		EGIT_BRANCH="master"
else
		SRC_URI=""
		KEYWORDS="~x86"
fi

SLOT="0"

#RDEPEND="${DEPEND}"

DEPEND=""
