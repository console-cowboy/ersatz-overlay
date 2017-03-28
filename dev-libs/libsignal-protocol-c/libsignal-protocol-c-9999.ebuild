# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Signal Protocol C Library"
HOMEPAGE="https://www.whispersystems.org/"
EGIT_REPO_URI="https://github.com/WhisperSystems/libsignal-protocol-c"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="+shared"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_build shared SHARED_LIBS)
	)
	cmake-utils_src_configure
}
