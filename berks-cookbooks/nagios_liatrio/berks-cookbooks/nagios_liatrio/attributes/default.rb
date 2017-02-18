default['nagios']['server']['install_method'] = 'source'
default['nagios']['users_databag'] = 'nagios_users'
default['nagios']['enable_ssl'] = true

default['nrpe']['install_method'] = 'source'

if node.environment == '_default'
  default['nrpe']['allowed_hosts'] = %w( 10.0.2.15 )
end

