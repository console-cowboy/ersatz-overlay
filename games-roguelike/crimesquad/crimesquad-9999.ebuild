# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools eutils git-r3 gnome2-utils

DESCRIPTION="A satirical open-source text-based modern strategic political RPG"
HOMEPAGE="http://lcs.wikidot.com/"
EGIT_REPO_URI="https://github.com/Kamal-Sadek/Liberal-Crime-Squad.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+sound +vorbis"
REQUIRED_USE="vorbis? ( sound )"

RDEPEND="sys-libs/ncurses
	sound? ( media-libs/libsdl2[sound]
		 !vorbis? ( media-libs/sdl2-mixer[midi] )
		 vorbis? ( media-libs/sdl2-mixer[vorbis] )
	       )
	"

DEPEND="${RDEPEND}"

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
	fperms +x /opt/${PN}/${PN}
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

