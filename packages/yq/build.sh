TERMUX_PKG_HOMEPAGE=https://mikefarah.gitbook.io/yq/
TERMUX_PKG_DESCRIPTION="A lightweight and portable command-line YAML, JSON and XML processor"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.32.1"
TERMUX_PKG_SRCURL=https://github.com/mikefarah/yq/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=724cddee2b475ffebeb4f11031b6a01267e22350277c3bb965bb1b404488c635
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make() {
	termux_setup_golang

	go mod init || :
	go mod tidy
	go build
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin yq
}
