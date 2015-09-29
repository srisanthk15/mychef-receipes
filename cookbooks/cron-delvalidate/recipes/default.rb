#
# Cookbook Name:: cron-delvalidate
# Recipe:: Chef-Client Cron & Delete Validation.pem 
#
#

cron "clientrun" do
  minute '*/15'
#  hour '0'
  command "/usr/bin/chef-client >> /var/log/chef/cron.log"
  action :create
end

file "/etc/chef/validation.pem" do
  action :delete
end
