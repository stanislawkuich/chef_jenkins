# InSpec test for recipe chef_jenkins::fedora

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe file('/etc/yum.repos.d/jenkins.repo') do
  its('type') { should eq :file }
  its('owner') { should eq 'root' }
  its('group') { should eq 'root' }
  its('mode') { should cmp '0644' }
end

describe port(8080) do
  it { should be_listening }
end
