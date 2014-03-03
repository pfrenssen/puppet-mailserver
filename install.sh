#!/bin/bash
#
# Installs puppet on Debian Wheezy.
#

# Add the repository.
wget https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb -O ~/puppetlabs-release-wheezy.deb
sudo dpkg -i ~/puppetlabs-release-wheezy.deb
sudo apt-get update
sudo apt-get install puppet
rm ~/puppetlabs-release-wheezy.deb

