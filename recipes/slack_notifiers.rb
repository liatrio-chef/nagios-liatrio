#
# Author:: Eddie Bracho <eddieb@liatrio.com>
#
# Cookbook Name:: nagios_liatrio
# Recipe:: slack_notifers
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

slack_creds = Chef::EncryptedDataBagItem.load('nagios_creds', 'slack')

template '/usr/bin/host_notify_slack' do
  variables(
    slack_webhook_url: slack_creds['webhook_url'],
    slack_channel: slack_creds['channel'],
    slack_botname: slack_creds['botname']
  )
  owner 'root'
  mode '755'
  source 'host_notify_slack.erb'
end

template '/usr/bin/service_notify_slack' do
  variables(
    slack_webhook_url: slack_creds['webhook_url'],
    slack_channel: slack_creds['channel'],
    slack_botname: slack_creds['botname']
  )
  owner 'root'
  mode '755'
  source 'service_notify_slack.erb'
end
