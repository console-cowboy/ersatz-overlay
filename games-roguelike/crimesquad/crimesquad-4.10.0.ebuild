# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools eutils gnome2-utils

DESCRIPTION="A satirical open-source text-based modern strategic political RPG"
HOMEPAGE="http://lcs.wikidot.com/"
SRC_URI="https://github.com/Kamal-Sadek/Liberal-Crime-Squad/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+sound +vorbis"
REQUIRED_USE="vorbis? ( sound )"

RDEPEND="sys-libs/ncurses
	sound? ( media-libs/libsdl2[sound]
		 media-libs/sdl2-mixer[vorbis=]
	       )
	"

DEPEND="${RDEPEND}"

S="${WORKDIR}/Liberal-Crime-Squad-${PV}"

src_prepare() {
	eapply_user
	eautoreconf -fvi
}

src_install() {
	dobin ${FILESDIR}/${PN}
	domenu ${PN}.desktop
	doman man/${PN}.6
	insinto /opt/${PN}
	doins -r art
	doins -r docs
	doins -r man
	doins src/${PN}
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
