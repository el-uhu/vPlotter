#!/bin/sh

# Basics
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade

# Download openFrameworks
# v0.8.4
# tried v0.8.4, which looks like the one that was originally used.
# no success, as it required python2.6, which is poorly supported under most recent raspian versions
#
# v0.9.0-v0.9.8
# recompilation of poco necessary because >gcc5 is mouseDragged
# recompilation failed


cd
wget https://openframeworks.cc/versions/v0.10.0/of_v0.10.0_linuxarmv6l_release.tar.gz
mkdir openFrameworks
tar vxfz of_v0.10.0_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1

# Install packages and compile openFrameworksCompiled
cd /home/pi/openFrameworks/scripts/linux/debian
sudo ./install_dependencies.sh
make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project
