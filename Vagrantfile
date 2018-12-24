# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 27017, host: 27017, id: "mongodb"
  config.vm.provision "shell", path: "bootstrap.sh"
end
