#!/bin/bash

ansible-playbook -i /rhis/vars/external_inventory/inventory \
        -e "vault_path=/rhis/vars/vault/rhis_builder_vault.yml" \
        -u ansiblerunner \
        --ask-vault-pass \
        /rhis/rhis-builder-idm/phase1_setup.yml