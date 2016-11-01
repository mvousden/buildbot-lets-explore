#!/bin/bash
BUILDBOT_EXEC_PREFIX="$HOME/miniconda2/bin"
$BUILDBOT_EXEC_PREFIX/buildbot start master/
$BUILDBOT_EXEC_PREFIX/buildbot-worker start worker/
