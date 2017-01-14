# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit elisp git-r3

DESCRIPTION="A major mode for editing Nim source code."
HOMEPAGE="https://github.com/nim-lang/nim-mode"
EGIT_REPO_URI="git://github.com/nim-lang/nim-mode.git https://github.com/nim-lang/nim-mode.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""

SITEFILE="50${PN}-gentoo.el"
DOCS="README.md"
