#
# Cookbook Name:: testdata
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Load the keys of the items in the 'admins' data bag
group 'ops' do
end

admins = data_bag('admin_users')

admins.each do |id|
  # This causes a round-trip to the server for each admin in the data bag
  admin = data_bag_item('admin_users', id)
  homedir = '/home/{id}'

  # for each admin in the data bag, make a user resource
  # to ensure they exist
  user(id) do
    uid admin['uid']
    gid admin['gid']
    shell admin['shell']
    comment admin['comment']
    home homedir
    manage_home true
  end

end
