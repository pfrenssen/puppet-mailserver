#!/bin/bash
#
# Installs puppet on Debian Wheezy.
#

# Add the repository.
wget https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb -O ~/puppetlabs-release-wheezy.deb
dpkg -i ~/puppetlabs-release-wheezy.deb
apt-get update
apt-get install puppet
rm ~/puppetlabs-release-wheezy.deb

