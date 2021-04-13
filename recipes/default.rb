#
# Cookbook:: chef_jenkins
# Recipe:: default
#
# Copyright:: 2021, pu5zkin, All Rights Reserved.
case node['platform']
when 'centos'
  include_recipe 'chef_jenkins::centos'
when 'fedora'
  include_recipe 'chef_jenkins::fedora'
end
