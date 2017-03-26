# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Message Carbons (XEP-0280) for libpurple"
HOMEPAGE="https://github.com/gkdr/carbons"
SRC_URI="https://github.com/gkdr/carbons/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/libxml2
	dev-libs/glib:2
	net-im/pidgin
	"

DEPEND="${RDEPEND}"

src_install() {
	into /usr/lib/pidgin
	dolib.so build/carbons.so
}
