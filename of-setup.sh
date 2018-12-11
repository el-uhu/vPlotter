#!/bin/sh

# Basics
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade

# Download openFrameworks
cd
wget https://openframeworks.cc/versions/v0.10.0/of_v0.10.0_linuxarmv6l_release.tar.gz
mkdir openFrameworks
tar vxfz of_v0.10.0_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1

# Install packages and compile openFrameworksCompiled
cd /home/pi/openFrameworks/scripts/linux/debian
sudo ./install_dependencies.sh
make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project
