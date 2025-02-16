################################################################################
#
# knulli bezels
#
################################################################################
# Version.: Commits on Oct 17, 2024
KNULLI_BEZELS_VERSION = dc7097f3e6c09c257d25e9ebf056731f1b3a4ff5
KNULLI_BEZELS_SITE = $(call github,chrizzo-hb,knulli-bezels,$(KNULLI_BEZELS_VERSION))

define KNULLI_BEZELS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/batocera/datainit/decorations
	cp -rf $(@D)/default-knulli		      $(TARGET_DIR)/usr/share/batocera/datainit/decorations
	(cd $(TARGET_DIR)/usr/share/batocera/datainit/decorations && ln -sf default-knulli default)

endef

$(eval $(generic-package))

