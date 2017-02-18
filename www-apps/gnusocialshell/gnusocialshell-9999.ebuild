# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit autotools git-r3
DESCRIPTION="A text-based GNUsocial client."
HOMEPAGE="http://gnusocialshell.amayaos.com/"
EGIT_REPO_URI="https://github.com/dalmemail/GnuSocialShell"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
RDEPEND="net-misc/curl"
DEPEND="${RDEPEND}"

src_prepare() {
	config_rpath_update "${S}/config.rpath"
	eautoreconf
	eapply_user
}

src_install() {
	dobin gnusocialshell
	einstalldocs
}
