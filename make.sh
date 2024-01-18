#!/usr/bin/env bash

export XDG_DATA_HOME=${XDG_DATA_HOME-${HOME}/.local/share}
export XDG_BIN_HOME=${XDG_BIN_HOME-${HOME}/.local/bin}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME-${HOME}/.config}

pushd ./playbooks
ansible-galaxy install -r requirements.yaml
ansible-playbook main.yaml
