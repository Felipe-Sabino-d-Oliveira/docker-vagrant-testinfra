
Vagrant.configure("2") do |config|

  # Sistema operacional da máquina virtual
  config.vm.box = "ubuntu/jammy64"

  # Nome da máquina virtual
  config.vm.hostname = "test-infra-server"

  # Encaminhamento SSH
  config.vm.network "forwarded_port",
    guest: 22,
    host: 2222,
    host_ip: "0.0.0.0"

  # Encaminhamento HTTP
  config.vm.network "forwarded_port",
    guest: 80,
    host: 8080

  # Configurações do VirtualBox
  config.vm.provider "virtualbox" do |vb|

    vb.name = "test-infra-server"
    vb.memory = 2048
    vb.cpus = 2

  end

end
