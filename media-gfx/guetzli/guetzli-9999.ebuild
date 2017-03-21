# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3
DESCRIPTION="JPEG encoder that aims for excellent compression density at high visual quality"
HOMEPAGE="https://github.com/google/guetzli"
EGIT_REPO_URI="https://github.com/google/guetzli"
LICENSE="Apache-2.0"
SLOT="0"
IUSE=""
RDEPEND="media-libs/libpng"
DEPEND="${RDEPEND}"

src_install() {
	dobin "bin/Release/guetzli"
}
