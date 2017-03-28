# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="Signal Protocol C Library"
HOMEPAGE="https://www.whispersystems.org/"
SRC_URI="https://github.com/WhisperSystems/libsignal-protocol-c/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

src_configure() {
        local mycmakeargs=(
                $(cmake-utils_use_build shared SHARED_LIBS)
        )
	cmake-utils_src_configure
}
