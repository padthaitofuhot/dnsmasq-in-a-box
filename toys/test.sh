#!/usr/bin/env bash
source ../shipit/shipit.lib
setup_i18n
import_vars i18n
yay box/box.yml box
import_vars box
yay conf.yml
import_vars conf
VERBOSE=true

# test some stuff
