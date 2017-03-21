# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
DESCRIPTION="JPEG encoder that aims for excellent compression density at high visual quality"
HOMEPAGE="https://github.com/google/guetzli"
SRC_URI="https://github.com/google/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND="
	>=dev-cpp/gflags-2.1.2
	media-libs/libpng
	"

DEPEND="${RDEPEND}"

src_install() {
	dobin "bin/Release/guetzli"
}
