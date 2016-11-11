chef_gem "chef-vault"
require "chef-vault"
vault_obj = ChefVault::Item.load('oracle_user_details','my_user1')

Chef::Log.info("I am in databag item with vaule #{vault_obj['user']['details']['name']}")
Chef::Log.info("I am in databag item with vaule #{vault_obj['user']['details']['lastname']}")
Chef::Log.info("I am in databag item with vaule #{vault_obj['user']['details']['username']}")
Chef::Log.info("I am in databag item with vaule #{vault_obj['user']['details']['password']}")