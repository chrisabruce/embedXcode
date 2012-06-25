#
# embedXcode
# ----------------------------------
# Embedded Computing on Xcode 4.3
#
# Copyright © Rei VILO, 2010-2012
# Licence CC = BY NC SA
#

# References and contribution
# ----------------------------------
# See About folder
# 


# Arduino specifics
# ----------------------------------
# Automatic 0023 or 1.0 selection based on version.txt
#
ifneq ($(shell grep 1.0 $(ARDUINO_PATH)/lib/version.txt),)
    $(info 1.0)
    include $(MAKEFILE_PATH)/Arduino1.mk	
else
    $(info 23)
    include $(MAKEFILE_PATH)/Arduino23.mk	
endif

