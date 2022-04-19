TERMUX_PKG_HOMEPAGE=https://audacious-media-player.org
TERMUX_PKG_DESCRIPTION="Plugins for Audacious"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION=4.1
TERMUX_PKG_REVISION=5
TERMUX_PKG_SRCURL=https://distfiles.audacious-media-player.org/audacious-plugins-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=dad6fc625055349d589e36e8e5c8ae7dfafcddfe96894806509696d82bb61d4c
TERMUX_PKG_DEPENDS="audacious, qt5-qtbase, qt5-qtmultimedia, qt5-qtx11extras, zlib, libflac, libcue, libcurl, mpg123, libogg, libsndfile, libsoxr, libvorbis, libxrender, libxcomposite, ffmpeg"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-gtk --disable-wavpack --disable-qtglspectrum --disable-neon"
