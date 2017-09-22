# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit autotools git-r3
DESCRIPTION="A text-based GNUsocial client"
HOMEPAGE="http://gnusocialshell.amayaos.com/"
EGIT_REPO_URI="https://github.com/dalmemail/GnuSocialShell"
EGIT_COMMIT="01ee8ccd7322e9780f8e7dbe9e2f0edac9227409"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
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
