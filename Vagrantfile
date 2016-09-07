# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Provisions wordpress site on ubuntu14-cloudimage vm using ansible. The ansible playbook (playbook.yml)
# installs apache2, mysql, php, wordpress, and runs post installation tasks to configure wordpress.  
# After successful completion the wordpress site is ready to customize at http://localhost:8080/wordpress
#

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu14-cloudimage"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  # forward port 80 on the guest machine to 8080 on the host.
  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

  # Call ansible playbook to install and configure apache2, mysql, php, and wordpress. 
  # Also, copy checkip.sh script to vagrant home dir on guest machine and execute. 
  config.vm.provision :ansible do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end

end
