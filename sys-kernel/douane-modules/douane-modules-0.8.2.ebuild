
# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit linux-info linux-mod

DESCRIPTION="Kernel Modules for Douane firewall"
HOMEPAGE="http://douaneapp.com"
SRC_URI="https://github.com/Douane/douane-dkms/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="!=sys-kernel/douane-modules-9999"

S=${WORKDIR}/douane-dkms-${PV}
MODULE_NAMES="douane(net:${S})"

pkg_postinist() {
	linux-mod_pkg_postinst
	elog "If you are using sys-apps/openrc, please add \"douane\" to:"
	elog "  /etc/conf.d/modules"
}
