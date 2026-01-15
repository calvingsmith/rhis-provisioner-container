#!/bin/bash

ansible-playbook -i /rhis/vars/external_inventory/inventory \
        -e "vault_dir=/rhis/vars/vault" \
        -u ansiblerunner \
        --ask-vault-pass \
        /rhis/rhis-builder-idm/phase1_setup.yml