
Vagrant.configure("2") do |config|
  
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/trusty32"
    master.vm.network "private_network", ip: "10.0.0.10"
    master.vm.hostname = "master.test.node"
    master.vm.provision "shell", path: "master.sh"
    master.vm.provider "virtualbox" do |v|
  v.memory = 300
  end
  end

  config.vm.define "agent" do |agent|
    agent.vm.box = "ubuntu/trusty32"
    agent.vm.network "private_network", ip: "10.0.0.11"
    agent.vm.hostname = "agent.test.node"
    agent.vm.provision "shell", path: "agent.sh" 
    agent.vm.provider "virtualbox" do |v|
  v.memory = 300
  end
end
end
