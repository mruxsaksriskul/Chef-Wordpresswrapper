# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|
  my_iso = "/Users/mruxsaksri/Documents/ISO/ovftransport.iso"
  config.vm.box = "centos66-cloud.1.8.box"
  config.vm.hostname = 'chef-wordpresswrapper'

  config.vm.provider "virtualbox" do |vb|
  vb.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 0, '--device', 0, '--type', 'dvddrive', '--medium', my_iso]
     # vb.gui = true
  end
  config.vm.define "chef-wordpresswrapper"
  config.berkshelf.enabled = true
  config.vbguest.auto_update = true
  config.omnibus.chef_version = :latest
  config.berkshelf.berksfile_path = "/Users/mruxsaksri/Documents/chef-repo/cookbooks/chef-wordpresswrapper/Berksfile"
  config.vm.synced_folder '.', '/vagrant', disabled: false
  #config.vm.network :forwarded_port, guest: 22, host: 2345
  #config.vm.network :forwarded_port, guest: 80, host: 8080
  #config.vm.network :forwarded_port, guest: 8090, host: 8090
  config.vm.provision :chef_zero do |chef|

  chef.cookbooks_path = "/Users/mruxsaksri/Documents/chef-repo/cookbooks"
  chef.roles_path = "/Users/mruxsaksri/Documents/chef-repo/roles"
  chef.data_bags_path = "/Users/mruxsaksri/Documents/chef-repo/data_bags"
  #chef.add_recipe "nginx"
  chef.run_list = ['recipe[chef-wordpresswrapper::default]']
  #chef.run_list = ['recipe[chef-nginx::default]']
  #chef.add_role "nginx"
  #chef.add_role "appserv-feeds"

  end
end
