TERMUX_PKG_HOMEPAGE=https://github.com/pystardust/ytfzf
TERMUX_PKG_DESCRIPTION="A POSIX script that helps you find Youtube videos (without API)"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.2
TERMUX_PKG_SRCURL=https://github.com/pystardust/ytfzf/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=967de40de90d4143865f6d7597038b2f95bf54c6249b763b91bb1e0b2f59c058
TERMUX_PKG_DEPENDS="curl, jq"
TERMUX_PKG_RECOMMENDS="fzf, mpv"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"

termux_step_make() {
	:
}
