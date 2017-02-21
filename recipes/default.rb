#
# Cookbook Name:: nagios_liatrio
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

execute 'disable_selinux' do
  command 'setenforce 0'
end

include_recipe 'nagios::default'
include_recipe 'yum-epel'
package 'nagios-plugins-all'
