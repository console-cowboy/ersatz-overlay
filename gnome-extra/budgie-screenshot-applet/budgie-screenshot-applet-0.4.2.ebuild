# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
VALA_MIN_API_VERSION="0.28"

inherit meson ninja-utils vala

DESCRIPTION="Screenshot applet for Budgie Desktop"
HOMEPAGE="https://github.com/cybre/budgie-screenshot-applet"
SRC_URI="https://github.com/cybre/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND=">=dev-libs/json-glib-1.0.0
	 gnome-extra/budgie-desktop
	 >=gnome-base/gnome-desktop-3.18.0:3
	 >=x11-libs/gtk+-3.3.6:3
	 >=net-libs/libsoup-2.4.0
	 "
DEPEND="${RDEPEND}
	dev-util/ninja
	"

src_prepare() {
	mkdir ${S}/tmpbin
	ln -s $(echo $(whereis valac-) | grep -oE "[^[[:space:]]*$") ${S}/tmpbin/valac
	default
}

src_configure() {
	PATH="${S}/tmpbin/:$PATH" meson_src_configure
}

src_compile() {
	PATH="${S}/tmpbin/:$PATH" eninja || die "ninja failed"
}

src_install() {
	PATH="${S}/tmpbin/:$PATH" DESTDIR="${D}" eninja install || die "ninja install failed"
}
