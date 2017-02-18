# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit autotools
DESCRIPTION="A text-based GNUsocial client."
HOMEPAGE="http://gnusocialshell.amayaos.com/"
SRC_URI="http://gnusocialshell.amayaos.com/downloads/GnuSocialShell-1.1.zip"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
RDEPEND="net-misc/curl"
DEPEND="${RDEPEND}"

src_prepare() {
	config_rpath_update
	eautoreconf
}

src_install() {
	dobin gnusocialshell
	einstalldocs
}
