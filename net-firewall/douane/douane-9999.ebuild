# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="A personal firewall for GNU/Linux that protects user privacy"
HOMEPAGE="http://douaneapp.com"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	net-firewall/douane-daemon
	net-firewall/douane-dialog
	net-firewall/douane-configurator
	"

DEPEND="${RDEPEND}"
