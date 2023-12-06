TERMUX_PKG_HOMEPAGE=https://www.raylib.com/
TERMUX_PKG_DESCRIPTION="A simple and easy-to-use library to enjoy videogames programming"
TERMUX_PKG_LICENSE="ZLIB"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="5.0"
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/raysan5/raylib/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=98f049b9ea2a9c40a14e4e543eeea1a7ec3090ebdcd329c4ca2cf98bc9793482
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="glfw"
TERMUX_PKG_BUILD_DEPENDS="glu, opengl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DPLATFORM=Desktop
-DBUILD_EXAMPLES=OFF
-DBUILD_SHARED_LIBS=ON
-DUSE_EXTERNAL_GLFW=ON
-DOPENGL_VERSION=2.1
"
