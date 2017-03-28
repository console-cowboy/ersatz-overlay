# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Client lib for libsignal-protocol-c"
HOMEPAGE="https://github.com/gkdr/axc"
EGIT_REPO_URI="https://github.com/gkdr/axc"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-db/sqlite:3
	dev-libs/libgcrypt:0
	dev-libs/libsignal-protocol-c
	"

DEPEND="${RDEPEND}"

src_compile() {
        emake AX_PATH="/usr/lib/libsignal-protocol-c.a"
}
