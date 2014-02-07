#
# Cookbook Name:: php-phalcon
# Recipe:: default
#
# Copyright 2014, kinzal
node['php-phalcon']['packages'].each do |phalcon_package|
  package phalcon_package do
  	action :install
  end
end

path  = "#{Chef::Config['file_cache_path']}/phalcon"

git path do
	repository node['php-phalcon']['git_url']
	reference node['php-phalcon']['git_ref']
	action :sync
end

execute  "phalcon-build" do
	cwd "#{path}/build"
	user "root"
	command %{./install}

	not_if do
		::File.exists?("#{node['php-phalcon']['conf_dir']}/phalcon.ini")
	end
end

template "#{node['php-phalcon']['conf_dir']}/phalcon.ini" do
	source "phalcon.ini.erb"
	owner "root"
	group "root"
	mode 0644
end