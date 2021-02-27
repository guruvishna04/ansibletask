# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "bootstrap.sh"
  #config.vm.synced_folder "./data", "/vagrant_data"

  NodeCount = 2

  # Load Balancer Node
  config.vm.define "amanager" do |lb|
    lb.vm.box = "bento/ubuntu-20.04"
    lb.vm.hostname = "amanager.example.com"
    lb.vm.network "private_network", ip: "172.16.16.100"
    lb.vm.provider "virtualbox" do |v|
      v.name = "amanager"
      v.memory = 2048
      v.cpus = 2
    end
    lb.vm.provision "shell", path: "ansiblemanager.sh"
    lb.vm.synced_folder "../ansible_data", "/ansible_data"
  end

  # Load Balancer Node
  config.vm.define "aworker" do |lb|
    lb.vm.box = "bento/ubuntu-20.04"
    lb.vm.hostname = "aworker.example.com"
    lb.vm.network "private_network", ip: "172.16.16.101"
    lb.vm.provider "virtualbox" do |v|
      v.name = "aworker"
      v.memory = 2048
      v.cpus = 2
    end
  end

end