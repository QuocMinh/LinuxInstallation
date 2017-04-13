sudo su;

echo "deb http://files.freeswitch.org/repo/ubuntu/freeswitch-unstable/ trusty main" > /etc/apt/sources.list.d/freeswitch.list;

apt update;

# we need some prepackaged libraries for video support from this repo
wget -O - https://files.freeswitch.org/repo/ubuntu/freeswitch-1.6/freeswitch_archive_g0.pub | apt-key add -;
 
# if you have not already installed git and the devscripts packages please install them now
apt install devscripts git;
 
# get the latest master. Use the -b flag to get a specific branch
mkdir /usr/src/freeswitch-debs;
cd /usr/src/freeswitch-debs;
 
git clone https://freeswitch.org/stash/scm/fs/freeswitch.git freeswitch;
 
cd freeswitch;
./debian/util.sh build-all -aamd64 -ctrusty;
 
# The build may last about an hour, depending on your CPU speed.
# If the build is successful, you will have a bunch of .deb files in /usr/src/freeswitch-debs
# please see the log files in /usr/src/freeswitch-debs/log/ folder to monitor the build or look for failures

