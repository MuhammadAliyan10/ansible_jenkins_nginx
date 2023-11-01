#! /bin/bash


ansible-playbook -i inventory.ini -e configure.ini nginx_playbook.yml --private-key=/home/ubuntu/keys/jenkins_ansible.pem
