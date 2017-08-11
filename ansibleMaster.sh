sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
sudo mv /etc/ansible/ansible.cfg /etc/ansible/ansible.cfg.orig
sudo mv /etc/ansible/hosts /etc/ansible/hosts.orig
