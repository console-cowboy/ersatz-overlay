# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit git-r3 eutils
IUSE="+english spanish french"
REQUIRED_USE="english? ( !spanish !french ) spanish? ( !english !french ) french? ( !english !spanish )"
DESCRIPTION="A GTK+ GNUsocial client"
HOMEPAGE="http://gsdesktop.amayaos.com/"
EGIT_REPO_URI="https://github.com/dalmemail/GnuSocialDesktop"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
RDEPEND="net-misc/curl
	 net-misc/wget
	 x11-libs/gtk+:2"
DEPEND="${RDEPEND}"

src_compile() {
	if use english; then
		emake english
	fi
	if use spanish; then
		emake spanish
	fi
	if use french; then
		emake french
	fi
}

src_install() {
	dobin gsd
	einstalldocs
	make_desktop_entry gsd "GnuSocialDesktop" "gnusocialdesktop" "Network" "Terminal=false"
}
