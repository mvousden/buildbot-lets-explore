#!/bin/bash
BUILDBOT_EXEC_PREFIX="$HOME/miniconda2/bin"

# Create workers.
$BUILDBOT_EXEC_PREFIX/buildbot-worker create-worker worker_1 localhost worker_1 pass_1
$BUILDBOT_EXEC_PREFIX/buildbot-worker create-worker worker_2 localhost worker_2 pass_2

# Change the port of the workers.
sed "s|port = 9989|port = 9990|" -i worker_1/buildbot.tac
sed "s|port = 9989|port = 9991|" -i worker_2/buildbot.tac

# Start the master and the workers.
$BUILDBOT_EXEC_PREFIX/buildbot start master/
$BUILDBOT_EXEC_PREFIX/buildbot-worker start worker_1/
$BUILDBOT_EXEC_PREFIX/buildbot-worker start worker_2/
