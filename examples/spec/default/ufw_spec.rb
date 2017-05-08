require 'spec_helper'

describe file('/etc/ufw/before.rules') do
  it { should be_file }
  its(:content) { should contain("\n-A ufw-before-output -p icmp --icmp-type echo-request -j ACCEPT\n") }
end

describe package('ufw') do
  it { should be_installed }
end
