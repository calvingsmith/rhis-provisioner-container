#!/bin/bash

ansible-playbook -i /rhis/vars/external_inventory/inventory \
        -e "vault_path=/rhis/vars/vault/rhis_builder_vault.yml" \
        --ssh-common-args "-o Identityfile=/rhis/vars/vault/ssh_priv_key"  \
        --vault-password-file /rhis/vars/vault/vault_key -v \
        /rhis/rhis-builder-idm/phase1_setup.yml