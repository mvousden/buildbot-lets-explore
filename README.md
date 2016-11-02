A quick foray into Buildbot, starting from the tutorial.

Things to look at:

 - Create multiple workers with different names and ports.
 - Concurrent builds (with multiple workers).
 - Testing the polling mechanism automatically tests and builds.
 - Connecting the test and build job, so that the build job is triggered by a
   successful test.
 - Trigger a build (from the force builder) using a script or from the command
   line.
 - Obtain build operation information from the command line.
 - Post a notification on Slack (or similar).

Things we can do:

 - Spawn a master and a connected worker
 - Run package builds and source code tests using the graphical user interface.
