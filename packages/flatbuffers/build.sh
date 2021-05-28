TERMUX_PKG_HOMEPAGE=https://github.com/google/flatbuffers
TERMUX_PKG_DESCRIPTION="Memory Efficient Serialization Library"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Simeon Huang <symeon@librehat.com>"
TERMUX_PKG_VERSION=2.0.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/google/flatbuffers/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=9ddb9031798f4f8754d00fca2f1a68ecf9d0f83dfac7239af1311e4fd9a565c4

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DFLATBUFFERS_BUILD_SHAREDLIB=ON
-DFLATBUFFERS_BUILD_TESTS=OFF
"
