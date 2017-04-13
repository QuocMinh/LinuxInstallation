wget -O - https://files.freeswitch.org/repo/ubuntu/freeswitch-unstable/freeswitch_archive_g0.pub | apt-key add -;
sudo echo "deb http://files.freeswitch.org/repo/ubuntu/freeswitch-unstable/ trusty main" > /etc/apt/sources.list.d/freeswitch.list;
# you may want to populate /etc/freeswitch at this point.
# if /etc/freeswitch does not exist, the standard vanilla configuration is deployed
sudo mkdir /etc/freeswitch;
sudo apt-get update && sudo apt-get install -y freeswitch-all;
