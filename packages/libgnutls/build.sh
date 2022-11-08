TERMUX_PKG_HOMEPAGE=https://www.gnutls.org/
TERMUX_PKG_DESCRIPTION="Secure communications library implementing the SSL, TLS and DTLS protocols and technologies around them"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=3.7.8
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/gnutls/v${TERMUX_PKG_VERSION:0:3}/gnutls-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=c58ad39af0670efe6a8aee5e3a8b2331a1200418b64b7c51977fb396d4617114
TERMUX_PKG_DEPENDS="libc++, libgmp, libnettle, ca-certificates, libidn2, libunistring, unbound"
TERMUX_PKG_BREAKS="libgnutls-dev"
TERMUX_PKG_REPLACES="libgnutls-dev"
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-cxx
--disable-hardware-acceleration
--disable-openssl-compatibility
--with-default-trust-store-file=$TERMUX_PREFIX/etc/tls/cert.pem
--with-system-priority-file=${TERMUX_PREFIX}/etc/gnutls/default-priorities
--with-unbound-root-key-file=$TERMUX_PREFIX/etc/unbound/root.key
--with-included-libtasn1
--enable-local-libopts
--without-p11-kit
--disable-guile
--disable-doc
"

termux_step_pre_configure() {
	CFLAGS+=" -DNO_INLINE_GETPASS=1"
}
