# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit flag-o-matic git-r3 systemd

DESCRIPTION="GTK+ dialog for the Douane firewall"
HOMEPAGE="http://douaneapp.com"
EGIT_REPO_URI="git://github.com/Douane/douane-dialog.git https://github.com/Douane/douane-dialog.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	dev-libs/boost
	dev-libs/dbus-c++
	dev-libs/log4cxx
	dev-cpp/gtkmm:3.0
	"
DEPEND="${RDEPEND}"

src_compile() {
	append-cflags $(-std=c++11)
	default
}

src_install() {
	into /opt/douane
	dobin douane-dialog
	insinto /opt/douane/data
	doins data/douane_128.png
}
