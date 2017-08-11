# ec2-ubuntu-ansible-master
Shell Script to transform an ec2 ubuntu server into an ansible master

Easy to use when on the ec2 machine:

chmod +x ansibleMaster.sh

./ansibleMaster.sh

When on other machine:

chmod +x createMaster.sh

./createMaster.sh $keyfile $ip

Includes predefined ansible.cfg file to work with default settings for ubuntu ec2. This includes remote_user=ubuntu, scp_if_ssh = True and a privatekey file named ansiblemaster.pem. Edit the file to use the file you want to use. 

Note: If you remotecontrol ec2 ubuntu nodes, set the variable in the beginning of your play to use python3 as interpreter. It is preinstalled allowing ansible playbooks to work from the start:<br />
---<br />
- hosts: ubuntu<br />
  vars:<br />
    ansible_python_interpreter=/usr/bin/python3<br>
