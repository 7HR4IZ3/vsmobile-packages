TERMUX_PKG_HOMEPAGE=https://github.com/google/flatbuffers
TERMUX_PKG_DESCRIPTION="Memory Efficient Serialization Library"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION="23.5.9"
TERMUX_PKG_SRCURL=https://github.com/google/flatbuffers/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=fa0036f4a2d082f7034fd90a53a02ce0e121548b39c07c8d2a77a821da02fb01
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DFLATBUFFERS_BUILD_SHAREDLIB=ON
-DFLATBUFFERS_BUILD_TESTS=OFF
"
