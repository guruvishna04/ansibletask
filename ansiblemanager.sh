#!/bin/bash

# [task 1] install ansible
sudo apt update
#sudo apt-get update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y