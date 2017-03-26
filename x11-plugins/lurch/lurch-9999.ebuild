# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="OMEMO plugin for libpurple"
HOMEPAGE="https://github.com/gkdr/lurch"
EGIT_REPO_URI="https://github.com/gkdr/lurch"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-db/sqlite:3
	dev-libs/libgcrypt:0
	dev-libs/libxml2
	dev-libs/mini-xml
	net-im/pidgin[gtk]
	"

DEPEND="${RDEPEND}"
