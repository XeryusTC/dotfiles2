#!/bin/bash
SUDO=''
if [[ $EUID -ne 0 ]]; then
	SUDO='sudo'
fi

$SUDO sed -i 's/stretch/testing/g' /etc/apt/sources.list
$SUDO apt-get update
$SUDO apt-get install ansible -y --no-install-recommends
$SUDO sh -c "echo 'localhost ansible_connection=local' >> /etc/ansible/hosts"
