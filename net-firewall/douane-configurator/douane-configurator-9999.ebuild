# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python{3_4,3_5,3_6} )
inherit eutils distutils-r1 git-r3 python-r1

DESCRIPTION="GTK+ configurator for the Douane firewall"
HOMEPAGE="http://douaneapp.com"
EGIT_REPO_URI="git://github.com/Douane/douane-configurator.git https://github.com/Douane/douane-configurator.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	${PYTHON_DEPS}
	dev-python/dbus-python
	dev-python/pygobject
	sys-auth/polkit
	x11-libs/gtk+:3
	x11-misc/gtktwitterbox
	"
DEPEND="${RDEPEND}"

src_install() {
	domenu ${PN}.desktop
}
