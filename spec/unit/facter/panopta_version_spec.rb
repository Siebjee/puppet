require 'spec_helper'
require 'facter'

describe :panopta_version, :type => :fact do

  before :all do
    # perform any action that should be run for the entire test suite
  end

  before :each do
    # perform any action that should be run before every test
    Facter.clear
    # This will mock the facts that confine uses to limit facts running under certain conditions
  
  end

  it 'should return a value' do
    expect(Facter.fact(:panopta_version).value).to eq('value123')  #<-- change the value to match your expectation
  end
end
