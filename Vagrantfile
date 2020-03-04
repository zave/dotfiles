Vagrant.configure("2") do |config|
#  config.vm.box = "bento/ubuntu-18.04"
#  config.vm.box = "bento/debian-10"
#  config.vm.box = "bento/centos-7.6"
#  config.vm.box = "bento/freebsd-11.3"
#  config.vm.box = "bento/opensuse-leap-15.1"
#  config.vm.box = "bento/fedora-31"

  config.vm.provision "shell", privileged: false, path: "../dotfile-implant.sh"
end
