require 'spec_helper'
require 'facter'

describe :panopta_agent_config, :type => :fact do

  before :all do
    # perform any action that should be run for the entire test suite
  end

  before :each do
    # perform any action that should be run before every test
    Facter.clear
    # This will mock the facts that confine uses to limit facts running under certain conditions

  end

  it 'should return a value' do
    expect(Facter.fact(:panopta_agent_config).value).to eq('/etc/panopta-agent/panopta_agent.cfg')  #<-- change the value to match your expectation
  end
end
