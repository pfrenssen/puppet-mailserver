#!/bin/bash
#
# Installs puppet and librarian-puppet on Debian Wheezy.
#

# Add the repository.
wget https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb -O puppetlabs-release-wheezy.deb
dpkg -i Puppetlabs-release-wheezy.deb

# Install packages.
apt-get update
apt-get install puppet ruby-dev -y

# Install librarian-puppet.
gem install librarian-puppet

# Install puppet modules.
librarian-puppet update

# Clean up.
rm puppetlabs-release-wheezy.deb

echo "Installation done."
echo "Now do 'puppet apply site.pp --modulepath=./modules'."
