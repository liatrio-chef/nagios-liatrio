# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'bento/centos-6.8'

  config.berkshelf.enabled = true
  config.vm.provision 'chef_solo' do |chef|
    chef.data_bags_path = 'test/integration/data_bags'
    chef.add_recipe 'nagios_liatrio::default'
  end

  config.vm.network 'forwarded_port', guest: 80, host: 2080


  config.vm.provider :virtualbox do |v|
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    v.customize ['modifyvm', :id, '--cableconnected2', 'on']
  end
end
