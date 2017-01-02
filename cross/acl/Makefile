PKG_NAME = acl
PKG_VERS = 2.2.52
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).src.$(PKG_EXT)
PKG_DIST_SITE = http://download.savannah.gnu.org/releases/acl/
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

BUILD_DEPENDS = cross/attr

DEPENDS =

HOMEPAGE = http://savannah.nongnu.org/projects/acl
COMMENT  = Commands for manipulating POSIX Access Control Lists
LICENSE  = GPLv2

INSTALL_TARGET = myInstall
GNU_CONFIGURE = 1

STAGING_INSTALL_PREFIX := $(INSTALL_DIR)

include ../../mk/spksrc.cross-cc.mk

.PHONY: myInstall
myInstall:
	$(RUN) $(MAKE) install install-dev install-lib DESTDIR=$(INSTALL_DIR) prefix=$(INSTALL_PREFIX)
