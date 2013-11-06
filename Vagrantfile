Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-12.04-amd64"

  # THE URL FROM WHERE THE 'CONFIG.VM.BOX' BOX WILL BE FETCHED IF IT
  # DOESN'T ALREADY EXIST ON THE USER'S SYSTEM.
  config.vm.box_url = "http://dl.dropbox.com/u/4031118/Vagrant/ubuntu-12.04.1-server-i686-virtual.box"
  config.vm.network :forwarded_port, guest: 6379, host: 6379

  # Set virtual machine memory size
  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.provision :shell, :path => "init.sh"
end
