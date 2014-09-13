#
# Cookbook Name:: tk-windows
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/sandwich" do
	action :create
end

if node["platform"].eql?('windows') 
  include_recipe "iis"
  template "#{node['iis']['docroot']}/index.html" do
  	source "index.html.erb"
  end
else
  include_recipe "apache2"
  template "#{node[:apache][:dir]}/index.html" do
    source "index.html.erb"
  end
end
