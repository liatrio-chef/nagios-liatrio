default['nagios']['server']['install_method'] = 'source'
default['nagios']['server']['url']       = 'http://iweb.dl.sourceforge.net/project/nagios/nagios-4.x/nagios-4.0.8/nagios-4.0.8.tar.gz'
default['nagios']['server']['checksum']  = '8b268d250c97851775abe162f46f64724f95f367d752ae4630280cc5d368ca4b'
default['nagios']['users_databag'] = 'nagios_users'
default['nagios']['enable_ssl'] = true
default['nagios']['http_port'] = '443'
default['nagios']['load_default_config'] = false

# default['nagios']['home']          = '/apps/nagios'
# default['nagios']['conf_dir']      = '/apps/nagios/conf'
# default['nagios']['resource_dir']  = '/apps/nagios/resource'
# default['nagios']['config_dir']    = '/apps/nagios/conf.d'
# default['nagios']['log_dir']       = '/apps/nagios/log'
# default['nagios']['cache_dir']     = '/apps/nagios/cache'
# default['nagios']['state_dir']     = '/apps/nagios/state'
# default['nagios']['run_dir']       = '/apps/nagios/run'
# default['nagios']['docroot']       = '/apps/nagios/html'
# default["nagios"]["cgi-bin"]       = "/apps/nagios/cgi-bin/"
# default['nagios']['plugin_dir'] = '/apps/nagios/plugins'

# default['nagios']['dir_list'] = %W(#{node['nagios']['home']} #{node['nagios']['conf_dir']} #{node['nagios']['resource_dir']} #{node['nagios']['config_dir']} #{node['nagios']['log_dir']} #{node['nagios']['cache_dir']} #{node['nagios']['state_dir']} #{node['nagios']['run_dir']} #{node['nagios']['docroot']} #{node['nagios']['plugin_dir']})
