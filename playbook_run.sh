#! /bin/bash

ansible-playbook -i inventory.ini -e configure.ini --private-key=/home/ubuntu/keys/jenkins_ansible.pem nginx_playbook.yml
