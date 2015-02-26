# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu-trusty-server-amd64'
  config.vm.box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'
  config.vm.hostname = 'mailserver.example.org'

  config.vm.provision 'puppet' do |puppet|
    puppet.options = '--show_diff'
    puppet.manifests_path = 'vagrant'
    # 1. use this path if you have a work directory with all required modules
    puppet.module_path = '../'
    # 2. use this option if you ran `rake spec_prep` before
    #puppet.options += ' --modulepath /vagrant/spec/fixtures/modules'
  end

end
