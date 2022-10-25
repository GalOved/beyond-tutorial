[33mcommit 510308fc1ffa0e9240cb92472438540f829d6e07[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: GalOved <galoved94@gmail.com>
Date:   Tue Oct 25 10:17:56 2022 +0300

    Adding a Vagrantfile for spinning up a development VM
    
    Vagrant is a tool for using virtual machines to share development environments.
    Learn more about it at:
    https://www.vagrantup.com/
    
    Also making changes to the `.gitignore` file to ignore any data that Vagrant
    might create.

[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex b6e4761..9cce686 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -127,3 +127,6 @@[m [mdmypy.json[m
 [m
 # Pyre type checker[m
 .pyre/[m
[32m+[m
[32m+[m[32m# Vagrant[m
[32m+[m[32m.vagrant[m
\ No newline at end of file[m
[1mdiff --git a/Vagrantfile b/Vagrantfile[m
[1mnew file mode 100644[m
[1mindex 0000000..f920204[m
[1m--- /dev/null[m
[1m+++ b/Vagrantfile[m
[36m@@ -0,0 +1,74 @@[m
[32m+[m[32m# -*- mode: ruby -*-[m
[32m+[m[32m# vi: set ft=ruby :[m
[32m+[m
[32m+[m[32m# All Vagrant configuration is done below. The "2" in Vagrant.configure[m
[32m+[m[32m# configures the configuration version (we support older styles for[m
[32m+[m[32m# backwards compatibility). Please don't change it unless you know what[m
[32m+[m[32m# you're doing.[m
[32m+[m[32mVagrant.configure("2") do |config|[m
[32m+[m[32m  # The most common configuration options are documented and commented below.[m
[32m+[m[32m  # For a complete reference, please see the online documentation at[m
[32m+[m[32m  # https://docs.vagrantup.com.[m
[32m+[m
[32m+[m[32m  # Every Vagrant development environment requires a box. You can search for[m
[32m+[m[32m  # boxes at https://vagrantcloud.com/search.[m
[32m+[m[32m  config.vm.box = "fedora/34-cloud-base"[m
[32m+[m[32m  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"[m
[32m+[m
[32m+[m[32m  # Disable automatic box update checking. If you disable this, then[m
[32m+[m[32m  # boxes will only be checked for updates when the user runs[m
[32m+[m[32m  # `vagrant box outdated`. This is not recommended.[m
[32m+[m[32m  # config.vm.box_check_update = false[m
[32m+[m
[32m+[m[32m  # Create a forwarded port mapping which allows access to a specific port[m
[32m+[m[32m  # within the machine from a port on the host machine. In the example below,[m
[32m+[m[32m  # accessing "localhost:8080" will access port 80 on the guest machine.[m
[32m+[m[32m  # NOTE: This will enable public access to the opened port[m
[32m+[m[32m  # config.vm.network "forwarded_port", guest: 80, host: 8080[m
[32m+[m
[32m+[m[32m  # Create a forwarded port mapping which allows access to a specific port[m
[32m+[m[32m  # within the machine from a port on the host machine and only allow access[m
[32m+[m[32m  # via 127.0.0.1 to disable public access[m
[32m+[m[32m  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"[m
[32m+[m
[32m+[m[32m  # Create a private network, which allows host-only access to the machine[m
[32m+[m[32m  # using a specific IP.[m
[32m+[m[32m  # config.vm.network "private_network", ip: "192.168.33.10"[m
[32m+[m
[32m+[m[32m  # Create a public network, which generally matched to bridged network.[m
[32m+[m[32m  # Bridged networks make the machine appear as another physical device on[m
[32m+[m[32m  # your network.[m
[32m+[m[32m  # config.vm.network "public_network"[m
[32m+[m
[32m+[m[32m  # Share an additional folder to the guest VM. The first argument is[m
[32m+[m[32m  # the path on the host to the actual folder. The second argument is[m
[32m+[m[32m  # the path on the guest to mount the folder. And the optional third[m
[32m+[m[32m  # argument is a set of non-required options.[m
[32m+[m[32m  # config.vm.synced_folder "../data", "/vagrant_data"[m
[32m+[m
[32m+[m[32m  # Provider-specific configuration so you can fine-tune various[m
[32m+[m[32m  # backing providers for Vagrant. These expose provider-specific options.[m
[32m+[m[32m  # Example for VirtualBox:[m
[32m+[m[32m  #[m
[32m+[m[32m  # config.vm.provider "virtualbox" do |vb|[m
[32m+[m[32m  #   # Display the VirtualBox GUI when booting the machine[m
[32m+[m[32m  #   vb.gui = true[m
[32m+[m[32m  #[m
[32m+[m[32m  #   # Customize the amount of memory on the VM:[m
[32m+[m[32m  #   vb.memory = "1024"[m
[32m+[m[32m  # end[m
[32m+[m[32m  #[m
[32m+[m[32m  # View the documentation for the provider you are using for more[m
[32m+[m[32m  # information on available options.[m
[32m+[m
[32m+[m[32m  # Enable provisioning with a shell script. Additional provisioners such as[m
[32m+[m[32m  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the[m
[32m+[m[32m  # documentation for more information about their specific syntax and use.[m
[32m+[m[32m  # config.vm.provision "shell", inline: <<-SHELL[m
[32m+[m[32m  #   apt-get update[m
[32m+[m[32m  #   apt-get install -y apache2[m
[32m+[m[32m  # SHELL[m
[32m+[m	[32mconfig.vm.provider "virtualbox" do |vb|[m
[32m+[m		[32mvb.memory = "1024"[m
[32m+[m	[32mend[m
[32m+[m[32mend[m
