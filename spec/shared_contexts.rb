# optional, this should be the path to where the hiera data config file is in this repo
# You must update this if your actual hiera data lives inside your module.
# I only assume you have a separate repository for hieradata and its include in your .fixtures
hiera_config_file = File.expand_path(File.join(File.dirname(__FILE__), 'fixtures','modules','hieradata', 'hiera.yaml'))

# hiera_config and hiera_data are mutually exclusive contexts.

shared_context :global_hiera_data do
  let(:hiera_data) do
     {
       #"panopta::aggregator_url" => '',
       #"panopta::customer_key" => '',
       #"panopta::fqdn" => '',
       #"panopta::interface_mapping" => '',
       #"panopta::manifest::aggregator_url" => '',
       #"panopta::manifest::customer_key" => '',
       #"panopta::manifest::fqdn" => '',
       #"panopta::manifest::interface_mapping" => '',
       #"panopta::manifest::server_group" => '',
       #"panopta::manifest::server_key" => '',
       #"panopta::manifest::server_name" => '',
       #"panopta::manifest::tags" => '',
       #"panopta::manifest::templates" => '',
       #"panopta::plugins" => '',
       #"panopta::server_group" => '',
       #"panopta::server_key" => '',
       #"panopta::server_name" => '',
       #"panopta::tags" => '',
       #"panopta::templates" => '',
     
     }
  end
end

shared_context :hiera do
    # example only,
    let(:hiera_data) do
        {:some_key => "some_value" }
    end
end

shared_context :linux_hiera do
    # example only,
    let(:hiera_data) do
        {:some_key => "some_value" }
    end
end

# In case you want a more specific set of mocked hiera data for windows
shared_context :windows_hiera do
    # example only,
    let(:hiera_data) do
        {:some_key => "some_value" }
    end
end

# you cannot use this in addition to any of the hiera_data contexts above
shared_context :real_hiera_data do
    let(:hiera_config) do
       hiera_config_file
    end
end
