# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure( VAGRANTFILE_API_VERSION ) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :forwarded_port, guest: 3000, host: 3000  # forward the default rails port
  config.vm.network :forwarded_port, guest: 3306, host: 3307  # forward the MySQL port
  config.vm.network :forwarded_port, guest: 5432, host: 5433  # forward the PostgreSQL port

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "apt"
    chef.add_recipe "nodejs"
    chef.add_recipe "ruby_build"
    chef.add_recipe "rbenv::system"
    chef.add_recipe "rbenv::vagrant"

    chef.json = {
      :nodejs => {
        :version => "0.10.12"
      }, 
      :rbenv => {
        :rubies => ["2.0.0-p247"],
        :global => "2.0.0-p247",
        :gems => {
          "2.0.0-p247" => [
            { :name => "rails" }
          ]
        }
      }
    }
  end

end