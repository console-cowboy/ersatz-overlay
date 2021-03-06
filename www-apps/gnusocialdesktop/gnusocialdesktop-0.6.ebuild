# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit eutils
IUSE="+english spanish french"
REQUIRED_USE="english? ( !spanish !french ) spanish? ( !english !french ) french? ( !english !spanish )"
DESCRIPTION="A GTK+ GNUsocial client"
HOMEPAGE="http://gsdesktop.amayaos.com/"
SRC_URI="http://gsdesktop.amayaos.com/downloads/GnuSocialDesktop-0.6-Bilbo.tar.xz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="net-misc/curl
	 net-misc/wget
	 x11-libs/gtk+:2"
DEPEND="${RDEPEND}"

S="${WORKDIR}/GnuSocialDesktop-0.6-Bilbo"

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
