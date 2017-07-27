# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION="A satirical open-source text-based modern strategic political RPG"
HOMEPAGE="http://www.bay12forums.com/smf/index.php?topic=125450.0"
SRC_URI="https://github.com/Kamal-Sadek/Liberal-Crime-Squad/releases/download/v${PV}/Liberal.Crime.Squad.Linux.tar.gz -> ${P}.tar.gz"
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

src_prepare() {
	eapply_user
	eautoreconf -fvi
}

src_install() {
	emake DESTDIR="${D}" install
	domenu crimesquad.desktop
	dodoc AUTHORS LINUX_README.txt TODO
}
