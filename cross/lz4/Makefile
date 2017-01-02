PKG_NAME = lz4
PKG_VERS = 1.7.4.2
PKG_EXT = tar.gz
PKG_DIST_NAME = v$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/lz4/lz4/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

CONFIGURE_TARGET = nop
INSTALL_TARGET = myInstall

HOMEPAGE = http://www.lz4.org
COMMENT  = Extremely Fast Compression algorithm
LICENSE  = BSD/GPLv2

include ../../mk/spksrc.cross-cc.mk

.PHONY: myInstall
myInstall:
	$(RUN) $(MAKE) install PREFIX= DESTDIR=$(STAGING_INSTALL_PREFIX)
