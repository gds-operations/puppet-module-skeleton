require 'beaker-rspec'

hosts.each do |host|
  install_package host, 'rubygems'
  on host, 'gem install puppet --no-ri --no-rdoc'
  on host, "mkdir -p #{host['distmoduledir']}"
end

RSpec.configure do |c|

  # Set project root directory
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Enforce readable test descriptions
  c.formatter = :documentation

  # Configure all the nodes
  c.before :suite do
    # Install relevant Puppet module(s)
    puppet_mdoule_install(:source => proj_root, :module_name => 'skeleton')
    hosts.each do |host|
      on host, puppet('module','install','puppetlabs-stdlib'), { :acceptable_exit_codes => [0,1] }
    end
  end
end