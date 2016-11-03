A quick foray into Buildbot, starting from the tutorial.

Things to look at:

 - Concurrent builds (with multiple workers).
 - Trigger a build (from the force builder) using a script or from the command
   line.
 - Automated testing of any new branches (in parallel).
 - Saturate the number of workers with the number of branches.
 - Obtain build operation information from the command line.
 - Post a notification on Slack (or similar).
 - Skip builds that contain "[ci-skip]" in the commit message.

Things we can do:

 - Spawn a master and a connected worker
 - Run package builds and source code tests using the graphical user interface.
 - Create multiple workers with different names and passes.
 - Testing the polling mechanism automatically tests and builds.
 - Connecting the test and build job, so that the build job is triggered by a
   successful test.
