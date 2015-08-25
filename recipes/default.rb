#
# Cookbook Name:: chef-wordpresswrapper
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe 'php'
#include_recipe 'php-fpm'
include_recipe 'nginx'


template '/etc/nginx/conf.d/wordpress.conf' do
  source 'nginxsite.erb'
  owner 'root'
  group 'root'
  mode '0755'
end
