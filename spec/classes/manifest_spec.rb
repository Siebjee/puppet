require 'spec_helper'
require 'shared_contexts'

describe 'panopta::manifest' do
  # by default the hiera integration uses hiera data from the shared_contexts.rb file
  # but basically to mock hiera you first need to add a key/value pair
  # to the specific context in the spec/shared_contexts.rb file
  # Note: you can only use a single hiera context per describe/context block
  # rspec-puppet does not allow you to swap out hiera data on a per test block
  #include_context :hiera

  # below is the facts hash that gives you the ability to mock
  # facts on a per describe/context block.  If you use a fact in your
  # manifest you should mock the facts below.
  let(:facts) do
    {
      :hostname => 'test',
      :fqdn => 'test.example.local'
    }
  end

  # below is a list of the resource parameters that you can override.
  # By default all non-required parameters are commented out,
  # while all required parameters will require you to add a value
  let(:params) do
    {
      :customer_key => nil,
      #:server_key => "UNSET",
      #:server_group => "0",
      #:aggregator_url => "UNSET",
      #:interface_mapping => "UNSET",
      #:templates => "0",
      #:tags => [],
      #:fqdn => "$::fqdn",
      #:server_name => "$::hostname",

    }
  end
  # add these two lines in a single test block to enable puppet and hiera debug mode
  # Puppet::Util::Log.level = :debug
  # Puppet::Util::Log.newdestination(:console)

  it do
    is_expected.to contain_notify("Server key for: $::hostname ($::fqdn)")
        .with({
          "message" => "$real_server_key",
          })
  end

  it do
    is_expected.to contain_file("panopta-agent-manifest")
        .with({
          "ensure" => "file",
          "path" => "/etc/panopta-agent-manifest",
          "mode" => "0644",
          "owner" => "root",
          "group" => "root",
          "replace" => nil,
          "content" => [],
          })
  end

end
