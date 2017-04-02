# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Pidgin plugin for sharing and viewing links to videos"
HOMEPAGE="https://github.com/stefanistrate/pidgin-embeddedvideo"
EGIT_REPO_URI="https://github.com/stefanistrate/pidgin-embeddedvideo"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="net-im/pidgin[gtk]
	net-libs/webkit-gtk
	net-misc/curl"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
