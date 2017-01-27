# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

inherit git-r3

DESCRIPTION="Daemon for the Douane firewall"
HOMEPAGE="http://douaneapp.com"
EGIT_REPO_URI="git://github.com/Douane/douane-daemon.git https://github.com/Douane/douane-daemon.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
		dev-libs/boost
		dev-libs/dbus-c++
		dev-libs/log4cxx
		sys-auth/polkit
		"
DEPEND="${RDEPEND}"

pkg_install() {
	dobin douaned
	insinto /etc/init.d
	doins init.d/douane
	insinto /etc/dbus-1/system.d/
	doins system.d/org.zedroot.Douane.conf
}
