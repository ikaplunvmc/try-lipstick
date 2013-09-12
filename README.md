# Try Lipstick!
Automatically stand up a Lipstick server and Hadoop cluster to try out [Lipstick](https://github.com/Netflix/Lipstick), a graphical Pig job visualization service.

## Requirements
Vagrant plus its dependencies (VirtualBox)

## Usage

1. From the command line run `run-me.sh`. This will download the necessary vagrant box if missing then bring it up.  This process entails installing a mysql server for Lipstick to store the state of pig runs, a tomcat server for the Lipstick webapp, and a single node Hadoop cluster for running Pig jobs.  As such, don't be suprised when it takes a few minutes to complete.

1. Kick off a sample pig job by running `vagrant ssh -c ./run-example-pig-script.sh`. This will execute the provided example pig script which publishes job information to Lipstick.

1. Point your web browser at `http://127.0.0.1:8080/lipstick-1.0`.  You should see the Lipstick home page with your job running.  Click on this job to see in-depth information about the Pig script and its associated Hadoop jobs.
