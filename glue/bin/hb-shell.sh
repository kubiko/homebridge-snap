#!/bin/sh

# change to working directory
cd "${SNAP_COMMON}"

SHELL_USER="root"
SHELL_USER_HOME=${SNAP_USER_DATA}

printf "Entering Homebridge Shell. To exit type 'exit'.\n\n"

exec sudo --user "$SHELL_USER" env "HOME=$SHELL_USER_HOME" bash --rcfile ${SNAP}/opt/homebridge/bashrc-hb-shell
