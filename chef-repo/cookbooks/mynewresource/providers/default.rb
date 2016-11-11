action :prepare do 
	Chef::Log.info("I am in prepare action")
	
end

action :cleanup do
	Chef::Log.info("i am in clean action #{new_resource.name}")
end