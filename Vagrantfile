# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
$script = <<'EOF'
sudo perl -p -i -e 's/us.archive/gb.archive/g' /etc/apt/sources.list
sudo apt-get update
EOF

Vagrant.configure(2) do |config|
  config.vm.box = "mhristof/ansible-1.9.4"
  config.vm.network "public_network", bridge: ENV.fetch('VAGRANT_NETWORK_IFACE', 'em1')
  config.vm.provision :shell, :inline => $script
  config.vm.provision 'ansible' do |ansible|
      ansible.playbook = "./python.yml"
      ansible.sudo = true
  end


end
