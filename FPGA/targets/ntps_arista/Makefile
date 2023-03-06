#-------------------------------------------------------------------------------
#- Netnod AB
#- Copyright (c) 2022 Netnod AB
#- Arista Networks, Inc. Confidential and Proprietary.
#- Copyright (c) 2021 Arista Networks, Inc. All rights reserved.
#-------------------------------------------------------------------------------
#- Author:
#-   Christer Weinigel <wingel@netnod.se>
#-   fdk-support@arista.com
#-
#- Description:
#-   Project Makefile for building custom applications targeting the
#-   Arista 7130 development platforms
#-
#-   Licensed under BSD 3-clause license:
#-     https://opensource.org/licenses/BSD-3-Clause
#-
#- Tags:
#-   license-bsd-3-clause
#-
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Environment & Project variables
#-------------------------------------------------------------------------------

.SECONDEXPANSION:

PROJECT    ?= ntps
VERSION_ID ?= 4.0.0
BUILD_ID   ?= 1

PROJECT_DIR         = $(CURDIR)
ARISTA_FDK_VERSION ?= 2.2.0
ARISTA_FDK_DIR     ?= $(PROJECT_DIR)/../../../arista_fdk-$(ARISTA_FDK_VERSION)
ARISTA_SRC_DIR      = $(ARISTA_FDK_DIR)/src

SOURCE_FILES = $(PROJECT_DIR)/src_files.json

BOARDSTD ?= $(sort $(foreach brd, $(wildcard src/*-cfg.json), $(wordlist 2,2, $(subst -, ,$(basename $(notdir $(brd)))))))
VARIANTS ?= $(sort $(foreach var, $(wildcard src/*-cfg.json), $(wordlist 1,1, $(subst -, ,$(basename $(notdir $(var)))))))

define parse_app_cfg
    $(foreach src, $(1),\
      $(if $(findstring json,$(src)),\
        $(shell sed -re '/app_sources/d; \
                         s/\"/ /g; s/,/ /g; s/]/ /g; \
                         /^\}/d; /^\{/d; \
                         s/\$$\{PROJECT_DIR\}/$(subst /,\/,$(PROJECT_DIR))/g; \
                         s/\$$\{ARISTA_FDK_DIR\}/$(subst /,\/,$(ARISTA_FDK_DIR))/g' $(src)), \
        $(src)))
endef

#-------------------------------------------------------------------------------
# Default Target
#-------------------------------------------------------------------------------

# List of application files to be built into the RPM
APPFILES = $(call parse_app_cfg,$(PROJECT_DIR)/src/app-cfg.json)

# List of register files to be built into the RPM
REGFILES = $(wildcard $(PROJECT_DIR)/src/*.csv)

# Create list of fpga bitstreams to be added to the application RPM
# Check that VARIANTS-BOARDSTD-cfg.json exists first...
PROJ_FILES = $(wildcard $(PROJECT_DIR)/src/*-cfg.json)
BITSTREAMS = $(foreach brd, $(BOARDSTD), \
                 $(foreach var, $(VARIANTS), \
                     $(if $(findstring $(var)-$(brd)-cfg.json, $(PROJ_FILES)), $(var)-$(brd))))

# build RPM and SWIX by default but no squashfs
APP_RPM            = $(PROJECT)-$(VERSION_ID).x86_64.rpm
APP_SWIX           = $(PROJECT)-$(VERSION_ID).swix
APP_BUILD_SQUASHFS =

.PHONY : all
all : $(APP_RPM) $(APP_SWIX)

#-------------------------------------------------------------------------------
# Additional targets
#-------------------------------------------------------------------------------

.PHONY: targets
targets::
	@printf "%s\n" \
	'' \
	'#-------------------------------------------------------------------------------' \
	'Helper Targets:' \
	'' \
	'    targets:' \
	'        Display this help message' \
	'    clean:' \
	'        Clean all generated files' \
	'' \
	'' \
	'#-------------------------------------------------------------------------------' \
	'Customised Project Makefile:' \
	'    Dependencies : Unix Shell' \
	'' \
	'    all:' \
	'        Description  : Calls Application RPM generation with customized variables' \
	'        Requirements : Refer to Application Project Generation helper' \
	'        Artifacts    : Refer to Application Project Generation helper' \
	'' \
	'    Eg. "make"' \
	'        "make BOARDSTD=$(lastword $(BOARDSTD))"' \
	''

.PHONY : clean
clean::

#-------------------------------------------------------------------------------
# Include rules
#-------------------------------------------------------------------------------

include $(ARISTA_FDK_DIR)/resources/app.mk
include $(ARISTA_FDK_DIR)/resources/vivado.mk

.PHONY : rpm
rpm::
	rm -fv ./build/*.tar.gz
	find . -name "*.rpm" | xargs rm -rfv ./build/rpmbuild || true
	/bin/time nice make BOARDSTD=lb2 2>&1 | tee log

#-------------------------------------------------------------------------------
# Include Arista Build Scripts
#-------------------------------------------------------------------------------
include $(ARISTA_FDK_DIR)/resources/app.mk
include $(ARISTA_FDK_DIR)/resources/vivado.mk

#-------------------------------------------------------------------------------
# Rules to copy user files from the FDK. 
# FIXME: These should be migrated to the IP core instead. 
#-------------------------------------------------------------------------------

$(APP_STAGING_DIR)/clockappdaemon.py $(APP_STAGING_DIR)/format_docstring.py: $(ARISTA_FDK_DIR)/examples/tscore/src/$$(@F)
	mkdir -p $(@D) && cp $< $@
	echo $(APP_STAGING_DIR)

$(APP_STAGING_DIR)/daemon/%:$(ARISTA_FDK_DIR)/examples/tscore/src/daemon/%
	mkdir -p $(@D) && cp $< $@
	echo $(APP_STAGING_DIR)
