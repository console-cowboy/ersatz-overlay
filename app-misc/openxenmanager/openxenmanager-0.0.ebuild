# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=6
PYTHON_COMPAT=( python2_7 )
inherit distutils-r1 python-r1
DESCRIPTION="An open-source XenServer management interface"
HOMEPAGE="https://github.com/OpenXenManager/openxenmanager"
SRC_URI="https://github.com/OpenXenManager/openxenmanager/archive/${PV}-r83.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="
	dev-python/pygtk
	dev-python/configobj
	net-libs/gtk-vnc[python]
	"
DEPEND="${RDEPEND}
	${PYTHON_DEPS}
	"
