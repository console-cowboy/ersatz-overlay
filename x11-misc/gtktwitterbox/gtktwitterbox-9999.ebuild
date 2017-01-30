# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DISTUTILS_SINGLE_IMPL=true
PYTHON_COMPAT=( python{3_4,3_5,3_6} )
inherit distutils-r1 git-r3 python-single-r1

DESCRIPTION="A GTK+ module for displaying recent tweets"
HOMEPAGE="http://douaneapp.com"
EGIT_REPO_URI="git://github.com/zedtux/gtktwitterbox.git https://github.com/zedtux/gtktwitterbox.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	${PYTHON_DEPS}
	dev-python/pygobject
	x11-libs/gtk+:3
	"

DEPEND="${RDEPEND}"
