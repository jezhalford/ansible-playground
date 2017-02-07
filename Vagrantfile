Vagrant.configure("2") do |config|

  Vagrant.require_version ">= 1.5"

  config.vm.define "host" do |host|
    host.vm.hostname = "host"
    host.vm.box = "ubuntu/trusty64"
    host.vm.network :private_network, ip: "33.33.33.11"

    host.vm.provision "shell", path: "setup/host/generate-key.sh"
  end

  config.vm.define "control", primary: true do |control|
    control.vm.box = "control"
    control.vm.box = "ubuntu/trusty64"
    control.vm.network :private_network, ip: "33.33.33.10"

    control.vm.provision "shell", path: "setup/control/install-ansible.sh"
    control.vm.provision "shell", path: "setup/control/config-ansible-hosts.sh"
    control.vm.provision "shell", path: "setup/control/install-key.sh"
  end





end
