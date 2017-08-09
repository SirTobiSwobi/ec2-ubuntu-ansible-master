#!/bin/bash
yes | scp -i $1 $1 ubuntu@$2:/home/ubuntu/.ssh
ssh -i $1 ubuntu@$2 mkdir /home/ubuntu/ec2-ubuntu-ansible-master
scp -i $1 ./ansibleMaster.sh ubuntu@$2:/home/ubuntu/ec2-ubuntu-ansible-master
ssh -i $1 ubuntu@$2 chmod +x /home/ubuntu/ec2-ubuntu-ansible-master/ansibleMaster.sh
ssh -i $1 ubuntu@$2 /home/ubuntu/ec2-ubuntu-ansible-master/ansibleMaster.sh
