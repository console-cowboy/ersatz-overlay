# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit eutils
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

src_install() {
	dobin gsd
	einstalldocs
	make_desktop_entry gsd "GnuSocialDesktop" "gnusocialdesktop" "Network,GTK" "Terminal=false"
}
