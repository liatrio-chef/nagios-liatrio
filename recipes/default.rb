#
# Author:: Eddie Bracho <eddieb@liatrio.com>
#
# Cookbook Name:: nagios_liatrio
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

execute 'disable_selinux' do
  command 'setenforce 0'
end

include_recipe 'nagios::default'

include_recipe 'nagios_liatrio::config' do
  notifies :restart, 'service[nagios]', :immediately
end

include_recipe 'nagios_liatrio::slack_notifiers'

include_recipe 'yum-epel'
package 'nagios-plugins-all'
package 'nagios-plugins-nrpe'
