
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 'a742b0b97f3b772d1dba6871550e93e3a847003b'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-zaransage.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app writer
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
#$(INSTALL) -d 0755 $(@D)/finder-app/writer $(TARGET_DIR)/usr/bin/writer
#$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
#$(INSTALL) -d 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin/finder-test.sh

#$(INSTALL) -d 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/usr/bin/finder.sh


define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
 $(INSTALL) -d 0755 $(@D)/finder-app/conf/ $(TARGET_DIR)/etc/finder-app/conf/
 $(INSTALL) -m 0755 $(@D)/finder-app/conf/* $(TARGET_DIR)/etc/finder-app/conf/

endef

$(eval $(generic-package))
