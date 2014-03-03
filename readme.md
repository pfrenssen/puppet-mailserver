puppet-mailserver
-----------------

Provisions a mailserver on Debian Wheezy.

Getting started
---------------

* Install Debian Wheezy with only the 'SSH server' base package.
* Log in as root.
* Install git and download the repository.
        $ apt-get update
        $ apt-get install git
        $ git clone https://github.com/pfrenssen/puppet-mailserver
* Install puppet.
        $ cd puppet-mailserver
        $ ./install.sh
