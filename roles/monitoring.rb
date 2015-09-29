# roles/monitoring.rb
name 'monitoring'
description 'Monitoring server'
run_list(
  'recipe[nagios::default]'
)

default_attributes(
  'nagios' => {
    'server_auth_method' => 'htauth'
  }
)
