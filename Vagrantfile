Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-precise12042-x64-vbox43"
  config.vm.box_url = "http://box.puphpet.com/ubuntu-precise12042-x64-vbox43.box"
  config.vm.provision :shell, :path => "vagrant-bootstrap.sh"
  config.vm.hostname = "learnzf2"
  config.vm.network "private_network", ip: "192.168.67.11", virtualbox__intnet: true
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 13306

  config.vm.provider "virtualbox" do |v|
    v.name = "learnzf2"
  end


end
