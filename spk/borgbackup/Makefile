SPK_NAME = borgbackup
SPK_VERS = 1.0.9
SPK_REV = 1
SPK_ICON = src/borg-icon.png
SPK_DEPENDS = "python3>=3.4.1-4"

BUILD_DEPENDS = cross/python3 cross/setuptools cross/pip cross/wheel 
BUILD_DEPENDS += cross/msgpack-python cross/$(SPK_NAME)

WHEELS = src/requirements.txt
PIP = pip3

DISPLAY_NAME = Borg
MAINTAINER = Sebastian Koslowski
HOMEPAGE = https://borgbackup.readthedocs.io/
DESCRIPTION = Deduplicating backup program with compression and authenticated encryption.
CHANGELOG = "initial version 1.0.9"

# To be on the safe side - copied from homeassistant
UNSUPPORTED_ARCHS = powerpc ppc824x

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

COPY_TARGET = nop
POST_STRIP_TARGET = borgbackup_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: borgbackup_extra_install
borgbackup_extra_install:
	install -m 755 -d $(STAGING_DIR)/app
	install -m 755 -d $(STAGING_DIR)/app/images
	install -m 755 -d $(STAGING_DIR)/share
	install -m 755 -d $(STAGING_DIR)/share/wheelhouse
	install -m 644 $(WORK_DIR)/wheelhouse/* $(STAGING_DIR)/share/wheelhouse/
	for size in 16 24 32 48 72; do \
		convert $(SPK_ICON) -thumbnail $${size}x$${size} \
			$(STAGING_DIR)/app/images/$(SPK_NAME)-$${size}.png ; \
	done
