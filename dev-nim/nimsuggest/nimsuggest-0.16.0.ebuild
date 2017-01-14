# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Tool for providing auto completion data for Nim source code."
HOMEPAGE="http://nim-lang.org"
SRC_URI="http://nim-lang.org/download/nim-${PV}.tar.xz -> ${P}.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	>=dev-lang/nim-0.16.0
"
RDEPEND=""

S=${WORKDIR}/nim-${PV}/tools/nimsuggest

src_compile() {
	nim c -d:release ${PN}.nim || die "compile failed"
}

src_test() {
	nim c -d:release tester.nim || die "tester.nim compile failed"
	cd tests
	./../tester
}

src_install() {
	dodir /usr/bin
	exeinto /usr/bin
	doexe ${PN}
}
