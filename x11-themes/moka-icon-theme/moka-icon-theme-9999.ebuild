# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools git-r3 gnome2-utils

DESCRIPTION="Moka icon theme"
HOMEPAGE="https://github.com/snwh/moka-icon-theme"
EGIT_REPO_URI="git://github.com/snwh/moka-icon-theme.git https://github.com/snwh/moka-icon-theme.git"

LICENSE="CC-BY-SA-4.0 GPL-3"
SLOT="0"
IUSE=""
KEYWORDS=""
RDEPEND=""
DEPEND=""

# This ebuild does not install any binaries
RESTRICT="binchecks strip"

src_prepare() {
	default
	eautoreconf
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
