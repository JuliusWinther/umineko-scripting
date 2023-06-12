#!/bin/sh

#
# Umineko Project update manager invocator
# Encoding: UTF-8
#
# Copyright (c) 2011-2019 Umineko Project
#
# This document is considered confidential and proprietary,
# and may not be reproduced or transmitted in any form 
# in whole or in part, without the express written permission
# of Umineko Project.
#

if [ "$UMINEKO_BASE" = "" ]; then
  echo "Missing UMINEKO_BASE!"
  exit 1
  PAUSE
fi

if [ "$UMINEKO_SCRIPTING" = "" ]; then
  echo "Missing UMINEKO_SCRIPTING!"
  exit 1
  PAUSE
fi

cd "$UMINEKO_SCRIPTING/update-manager"

export UMINEKO_FILES="$UMINEKO_BASE/arcs"
export UMINEKO_UPDATE="$UMINEKO_BASE/full_update"

export ARCHIVE_PREFIX="$UMINEKO_UPDATE/extra"
export TEMP_UPDATE_FOLDER=/tmp/umineko
export OUT_DIR=B:/UminekoProject

export LAST_EPISODE=$(cat "$UMINEKO_SCRIPTING/current/last")
export LAST_EPISODE_PT=$(cat "$UMINEKO_SCRIPTING/current/last_pt")
export LAST_EPISODE_CN=$(cat "$UMINEKO_SCRIPTING/current/last_cn")

# 4. To get the scripts for testers run:

php update-manager.php script "$OUT_DIR/en.txt" "$OUT_DIR/en.file" $LAST_EPISODE

PAUSE