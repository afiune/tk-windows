#
# Cookbook Name:: tk-windows
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "iis"

directory "/sandwich" do
	action :create
end

template "#{node['iis']['docroot']}/index.html" do
	source "index.html.erb"
end
