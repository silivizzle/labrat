# -*- mode: ruby -*-
# vi: set ft=ruby :

$box = "bento/centos-7.1"

Vagrant.configure("2") do |config|
  config.vbguest.auto_update = false
  config.vm.box = $box
  config.vm.hostname = "labrat"
  config.vm.netowrk "private_network", ip: "192.168.10.10"
  config.synced_folder "shared", "/shared"
  config.vm.provision "puppet" do |puppet|
    puppet.environment_path = "environments"
    puppet.environment = "test"
    puppet.options = "--verbose --debug"
  end
end
