# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Qt5 IM client for the Matrix protocol"
HOMEPAGE="https://github.com/QMatrixClient/Quaternion"
SRC_URI="https://github.com/QMatrixClient/Quaternion/releases/download/v${PV}/quaternion-source-${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-qt/qtcore-5.2.1
	>=dev-qt/qtquickcontrols-5.2.1[widgets]
	>=dev-qt/qtdeclarative-5.2.1[widgets]
	>=dev-qt/qtnetwork-5.2.1
	>=dev-qt/qtgui-5.2.1
	>=dev-qt/qtwidgets-5.2.1
	"
DEPEND="${RDEPEND}"

S=${WORKDIR}/Quaternion-${PV}
