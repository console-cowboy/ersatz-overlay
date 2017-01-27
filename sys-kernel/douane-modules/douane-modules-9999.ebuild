
# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 linux-info linux-mod

DESCRIPTION="Kernel Modules for Douane firewall"
HOMEPAGE="http://douaneapp.com"
EGIT_REPO_URI="git://github.com/Douane/douane-dkms.git https://github.com/Douane/douane-dkms.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="!=sys-kernel/douane-modules-9999"

BUILD_TARGETS="all"
MODULE_NAMES="douane(net:${S})"

pkg_postinist() {
	linux-mod_pkg_postinst
	elog "If you are using sys-apps/openrc, please add \"douane\" to:"
	elog "  /etc/conf.d/modules"
}
