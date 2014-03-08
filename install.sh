#!/bin/bash
#
# Installs puppet and librarian-puppet on Debian Wheezy.
#

# Add the repository.
wget https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb -O ~/puppetlabs-release-wheezy.deb
dpkg -i ~/puppetlabs-release-wheezy.deb

# Install packages.
apt-get update
apt-get install puppet ruby-dev -y

# Install librarian-puppet.
gem install librarian-puppet

# Clean up.
rm ~/puppetlabs-release-wheezy.deb

echo "Installation done. Now do 'puppet apply site.pp'.
