#!/bin/bash
[ -f "$1" ] || (echo "Arg: playbook.yml" && exit 1)
ansible-playbook -i localhost, --connection=local "$1"
