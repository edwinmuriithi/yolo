# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "geerlingguy/ubuntu2004"
  config.vm.network "forwarded_port", guest: 3000, host: 3000, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 5000, host: 5000, protocol: "tcp"
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |v|
    v.memory = 4096
  end
  # Ansible provisioning.
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end