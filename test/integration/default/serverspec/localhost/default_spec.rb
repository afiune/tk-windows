require 'spec_helper'

describe file('/sandwich') do
  it { should be_directory }
end

# describe package('bacon') do
#   it { should be_installed }
# end

# describe service('burger') do
#   it { should be_enabled   }
#   it { should be_running   }
# end

# describe port(80) do
#   it { should be_listening }
# end

# describe file('c:/sandwich/cheese.conf') do
#   it { should be_file }
#   it { should contain "Mozzarella" }
# end
