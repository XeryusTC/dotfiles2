#!/bin/bash
SUDO=''
if [[ $EUID -ne 0 ]]; then
	SUDO='sudo'
fi

$SUDO apt-get install ansible -y --no-install-recommends
$SUDO pacman -Syyu
$SUDO pacman -S ansible
$SUDO sh -c "echo 'localhost ansible_connection=local' >> /etc/ansible/hosts"
