# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/centos-6.7"

  # forward port 80 to 8080 on host machine
  config.vm.network "forwarded_port", guest: 80, host: 8081

  # ensure chef is install in vm
  config.omnibus.chef_version = :latest

  # download all required cookbooks
  config.berkshelf.enabled = true

  # deployed chef roles
  config.vm.provision "chef_solo" do |chef|
    chef.roles_path = "roles"
    chef.add_role("apache2")
  end
end
