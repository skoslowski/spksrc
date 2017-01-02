PKG_NAME = zlib
PKG_VERS = 1.2.9
PKG_EXT = tar.gz
PKG_DIST_NAME = v$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/madler/zlib/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = http://zlib.net/
COMMENT  = Compression Library
LICENSE  = zlib-license

CONFIGURE_ARGS = --shared --prefix=$(INSTALL_PREFIX)

include ../../mk/spksrc.cross-cc.mk
