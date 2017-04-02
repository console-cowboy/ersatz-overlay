# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
VALA_MIN_API_VERSION="0.30"
inherit git-r3 vala
DESCRIPTION="A modern XMPP client written in GTK+ and Vala"
HOMEPAGE="https://github.com/dino/dino"
EGIT_REPO_URI="https://github.com/dino/dino"
EGIT_SUBMODULES=( libsignal-protocol-c )
LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
RDEPEND="
	dev-db/sqlite:3
	>dev-libs/libgee-0.10:0.8
	>=dev-libs/glib-2.38
	>=x11-libs/gtk+-3.22
	x11-libs/libnotify
	"
DEPEND="
	${RDEPEND}
	$(vala_depend)
	dev-util/cmake
	dev-util/ninja
	"

src_prepare() {
	vala_src_prepare
	default
}

