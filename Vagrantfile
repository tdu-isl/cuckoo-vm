Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
  end

  config.vm.box = "datacastle/windows7"
  config.vm.box_version = "1.0"
  config.vm.guest = "windows7"
  config.ssh.username = "cuckoo1"
  config.ssh.password = "vagrant"
  config.ssh.insert_key = false
  config.ssh.shell = 'sh -l'
  config.ssh.sudo_command = ''

  # Run setup PowerShell
  config.vm.provision :shell, :path => "./setup_win7.ps1"
end
