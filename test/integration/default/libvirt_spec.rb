# encoding: utf-8

# use basic tests
describe package('libvirt-daemon') do
  it { should be_installed }
end

# extend tests with metadata
#control '01' do
#  impact 0.7
#  title 'Verify libvirtd service'
#  desc 'Ensures libvirtd service is up and running'
#  describe service('libvirtd') do
#    it { should be_enabled }
#    it { should be_installed }
#    it { should be_running }
#  end
#end

# implement os dependent tests
libvirt_user = 'libvirt-qemu'

describe user(libvirt_user) do
  it { should exist }
end

title 'verify virsh can connect to libvirtd service'
describe command('sudo virsh list') do
  its('stdout') { should include('Id') }
end
