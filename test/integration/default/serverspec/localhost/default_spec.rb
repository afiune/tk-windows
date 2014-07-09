require 'spec_helper'

describe file('/inetpub/wwwroot') do
  it { should be_directory }
end

describe file('/inetpub/wwwroot/index.html') do
  it { should be_file }
  it { should contain "Hello world" }
end

describe service('W3SVC') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe file('/sandwich') do
  it { should be_directory }
end

# describe package('burger') do
#   it { should be_installed }
# end
