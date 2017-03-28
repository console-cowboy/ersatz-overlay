# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="OMEMO (XEP-0384) for libpurple"
HOMEPAGE="https://git.imp.fu-berlin.de/mancho/libpurple-omemo-plugin"
EGIT_REPO_URI="https://git.imp.fu-berlin.de/mancho/libpurple-omemo-plugin"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-db/sqlite:3
	dev-libs/libgcrypt:0
	net-im/pidgin
	"

DEPEND="${RDEPEND}"

src_install() {
        insinto /usr/lib/pidgin
        insopts -m755
        doins build/omemo.so
}
