echo "comfiguring apt"
gpg --recv-key 4BD6EC30
gpg --recv-key 4BD6EC30
gpg -a --export 4BD6EC30 | sudo apt-key add -
echo '# puppetlabs' >> /etc/apt/sources.list
echo 'deb http://apt.puppetlabs.com precise main' >> /etc/apt/sources.list
echo 'deb-src http://apt.puppetlabs.com precise main' >> /etc/apt/sources.list
 
echo "apt-get update && apt-get upgrade"
apt-get update && apt-get upgrade
 
echo "apt-get install puppet"
apt-get install puppet
