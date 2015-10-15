# roles/monitoring.rb
name 'monitoring'
description 'Monitoring server'
run_list(
  'recipe[nagios::default]',
   'recipe[postfix]'
)
default_attributes(
  :nagios => {
    :server_auth_method => 'htauth',
    :url => 'chefws.testkony.com'
  }
)
