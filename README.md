### Pythian DevOps Challenge - Install Wordpress using Vagrant and Ansible

####OVERVIEW

    Use Vagrant to provision ubuntu14-cloudimage and call Ansible playbook to install apache2, mysql, php, and wordpress.  Use ansible to copy checkip.sh script to vagrant home directory on guest vm and execute.  
  
####FILES  
    Vagrantfile  - vagrant file to provision ubuntu14-cloudimage vm and run ansible playbook.   
    playbook.yml - ansible playbook to install and configure apache2, mysql, php, wordpress, and checkip.sh script.  
    checkip.sh   - script to query checkip.dyndns.org and append datetimestamp and current ip to checkip.log. Script and log file located in /home/vagrant on guest vm. 
  
####VERSION 
    Vagrant: 1.8.5  
    Ansible: 2.1.1.0  
  
####USAGE 
    git clone https://github.com/tomwhickey/pythian.git
    cd pythian
    vagrant up  
  
####WordPress URL 
    http://localhost:8080/wordpress  
        

