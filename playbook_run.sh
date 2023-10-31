#! /bin/bash

ansible-playbook -i inventory.ini -e configure.ini nginx_playbook.yml
