# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-kernel/raspberrypi-sources/raspberrypi-sources-3.17.9999.ebuild,v 1.1 2014/11/07 10:40:00 xmw Exp $

# This version is set to use a specific commit so will always be the same version

EAPI=5

ETYPE=sources
K_DEFCONFIG="bcm2709_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-2 versionator
EGIT_REPO_URI=https://github.com/raspberrypi/linux.git
EGIT_PROJECT="raspberrypi-linux.git"
EGIT_BRANCH="rpi-$(get_version_component_range 1-2).y"
EGIT_COMMIT="2dae3c6d94c9c7823b78fb4c73d9313251462c1a"

DESCRIPTION="Raspberry PI kernel sources"
HOMEPAGE="https://github.com/raspberrypi/linux"

KEYWORDS="~*"

src_unpack() {
	git-2_src_unpack
	unpack_set_extraversion
}
