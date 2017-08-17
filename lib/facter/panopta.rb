agent_config = '/etc/panopta-agent/panopta_agent.cfg'

Facter.add('panopta_agent_config') do
  setcode do
    agent_config
  end
end

Facter.add('panopta_server_key') do
  setcode do
    Facter::Util::Resolution.exec("grep server_key /etc/panopta-agent/panopta_agent.cfg | awk '{print $3}'")  unless not File.exists?(agent_config)
  end
end

Facter.add('panopta_agg_url') do
  setcode do
    Facter::Util::Resolution.exec("grep agg_url /etc/panopta-agent/panopta_agent.cfg | awk '{print $3}'")  unless not File.exists?(agent_config)
  end
end

Facter.add('panopta_version') do
  setcode do
    Facter::Util::Resolution.exec("grep version /etc/panopta-agent/panopta_agent.cfg | awk '{print $3}'")  unless not File.exists?(agent_config)
  end
end

Facter.add('panopta_customer_key') do
  setcode do
    Facter::Util::Resolution.exec("grep customer_key /etc/panopta-agent/panopta_agent.cfg | awk '{print $3}'")  unless not File.exists?(agent_config)
  end
end

Facter.add('panopta_customer_key') do
  setcode do
    Facter::Util::Resolution.exec("grep customer_key /etc/panopta-agent/panopta_agent.cfg | awk '{print $3}'")  unless not File.exists?(agent_config)
  end
end
