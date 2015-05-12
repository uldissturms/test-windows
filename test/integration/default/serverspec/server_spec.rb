require 'serverspec'

set :backend, :cmd

describe command('node -v') do
    its(:exit_status) { should eq 0 }
end
