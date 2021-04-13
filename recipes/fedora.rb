#
# Cookbook:: chef_jenkins
# Recipe:: fedora
#
# Copyright:: 2021, The Authors, All Rights Reserved.
yum_repository 'jenkins' do
  description node['jenkins_repository_descriptions']
  baseurl node['jenkins_repository']
  gpgkey node['jenkins_repository_gpgkey']
  action :create
end

package 'jenkins' do
  action :install
end

package 'java-devel' do
  action :install
end

service 'jenkins' do
  action :start
end
