#
# Cookbook:: chef_jenkins
# Spec:: centos
#
# Copyright:: 2021, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef_jenkins::centos' do
  context 'When all attributes are default, on CentOS 8' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'centos', '8'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'creates /etc/yum.repos.d/jenkins.repo' do
      expect(chef_run).to create_yum_repository('jenkins').with(
        mode: '0644'
      )
    end

    it 'Package is installed' do
      expect(chef_run).to install_package('jenkins')
    end

    it 'Service is enabled' do
      expect(chef_run).to enable_service('jenkins')
    end

    it 'Service is running' do
      expect(chef_run).to start_service('jenkins')
    end
  end
end
