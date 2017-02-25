#
# Cookbook Name:: nagios_liatrio
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'nagios_liatrio::default' do
  cached(:chef_run) do
   ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '12.04') do |_node, server|
     server.create_data_bag('nagios_users',
                                       'user1' => {
                                         'id' => 'tsmith',
                                         'groups' => ['sysadmin'],
                                         'nagios' => {
                                           'pager' => 'nagiosadmin_pager@example.com',
                                           'email' => 'nagiosadmin@example.com'
                                         }
                                       },
                                       'user2' => {
                                         'id' => 'bsmith',
                                         'groups' => ['users']
                                       })
   end.converge(described_recipe)
 end

  it 'disables selinux' do
    expect(chef_run).to run_execute('disable_selinux')
  end

  it 'includes local recipes' do
    expect(chef_run).to include_recipe('nagios::default')
    expect(chef_run).to include_recipe('nagios_liatrio::config')
    expect(chef_run).to include_recipe('nagios_liatrio::slack_notifiers')
  end

  it 'installs plugin packages' do
    expect(chef_run).to include_recipe('yum-epel')
    expect(chef_run).to install_package('nagios-plugins-all')
    expect(chef_run).to install_package('nagios-plugins-nrpe')
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end
end
