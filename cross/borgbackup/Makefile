PKG_NAME = borgbackup
PKG_VERS = 1.0.9
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/borgbackup/borg/releases/download/$(PKG_VERS)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/openssl cross/acl cross/lz4

HOMEPAGE = https://borgbackup.readthedocs.io/
COMMENT  = Deduplicating backup program with compression and authenticated encryption
LICENSE  = MIT

ENV += BORG_OPENSSL_PREFIX=$(STAGING_INSTALL_PREFIX)
ENV += BORG_LZ4_PREFIX=$(STAGING_INSTALL_PREFIX)

include ../../mk/spksrc.python-wheel.mk

