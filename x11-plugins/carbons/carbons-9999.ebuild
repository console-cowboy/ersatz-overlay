# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Message Carbons (XEP-0280) for libpurple"
HOMEPAGE="https://github.com/gkdr/carbons"
EGIT_REPO_URI="https://github.com/gkdr/carbons"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-libs/libxml2
	dev-libs/glib:2
	net-im/pidgin
	"

DEPEND="${RDEPEND}"

src_install() {
        insinto /usr/lib/pidgin
        insopts -m755
        doins build/carbons.so
}

