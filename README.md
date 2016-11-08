A quick foray into Buildbot, starting from the tutorial.

This repository requires a submodule to function. Clone this repository using
the `--recursive` flag to pull submodules as well (see
https://git-scm.com/book/en/v2/Git-Tools-Submodules).

To get started:

 - install the python packages listed in `requirements.txt`
 - command `./start.sh` (sorry Windows users)
 - connect to localhost:8010

Things to look at:

 - Trigger a build (from the force builder) using a script or from the command
   line.
 - Obtain build operation information from the command line.
 - Post a notification on Slack (or similar).

Things we can do:

 - Spawn a master and a connected worker
 - Run package builds and source code tests using the graphical user interface.
 - Create multiple workers with different names and passes.
 - Testing the polling mechanism automatically tests and builds.
 - Connecting the test and build job, so that the build job is triggered by a
   successful test.
 - Automated testing of any new branches. Merge commits are not counted
   separately, unfortunatly.
 - Concurrent builds (with multiple workers).
 - Saturate the number of workers with the number of branches.
 - Distinguish build status of development and master at a glance (feature
   branches are not so important).
 - Trigger builds off a merge.
 - Skip builds that contain "[ci-skip]" in the commit message. If multiple
   commits are received at once, the latest change without the "[ci-skip]" tag
   is built.
