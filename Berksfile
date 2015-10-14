source "https://supermarket.chef.io"

cookbook 'yum'
cookbook 'os-hardening', git: 'https://github.com/TelekomLabs/chef-os-hardening.git'
cookbook 'ssh-hardening', git: 'https://github.com/TelekomLabs/chef-ssh-hardening.git'
cookbook 'apache2', '~> 2.0'
cookbook 'apache-hardening', git: 'https://github.com/TelekomLabs/chef-apache-hardening.git'
cookbook 'webpage', path: './site-cookbooks/webpage'

# dependencies of apache cookbook
group :integration do
  cookbook 'iptables'
  cookbook 'logrotate'
  cookbook 'apt', '~> 2.4'
  cookbook 'yum', '~> 3.2'
  cookbook 'pacman', '~> 1.1.1'
  cookbook 'fqdn', git: 'https://github.com/drpebcak/fqdn-cookbook.git'
end
