#!/bin/bash

ansible-playbook -i /rhis/vars/external_inventory/inventory \
        -e "vault_path=/rhis/vars/vault/rhis_builder_vault.yml" \
        --ssh-common-args "-o Identityfile=/rhis/vars/vault/ssh_priv_key"  \
        --vault-password-file /rhis/vars/vault/vault_key -v \
        --extra-vars "role_name=platform_node_pre" \
        --limit=aap_controllers \
        /rhis/rhis-builder-aap/run_role.yml
