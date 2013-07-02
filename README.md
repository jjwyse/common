common
======

Common location for files that are used across my different projects.

* Many other Git repositories are dependent upon this project being available.

Build:
build.properties - defines the location of other projects in Git that you want to build
build.xml - build file that just calls the sub-projects build
common-build.properties - properties that are consistent across other Git projects
common-build.xml - main build file that gets used across different projects.  easy to re-use and does most of the heavy-hitting
macro-build.xml - defines macros used across projects

Environment:
jjw.bashrc - environment setup for building, deploying and running projects
jjw.aliases - helpful, but not necessary, aliases for navigating directories, running processes and looking at logs

Log4J:
log4j.xml - standard log4j rollingfileappender

Tomcat:
setenv.sh - environment variables needed for Tomcat to run other Git web apps

Scripts:
start.sh - used by the desktop java app projects to start up a process using the core project's jar
stop.sh - stops a desktop app using the app's PID file

Spring:
common-application-context.xml - defines beans used across spring projects
database-application-context.xml - defines a database driver that can be used by other applications

Notes:
mavenNotes.txt - Trying to learn how to use Maven so taking some notes on common commands
