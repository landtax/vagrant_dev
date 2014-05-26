echo "Downloading precise64 box for vagrant"
vagrant box add base http://files.vagrantup.com/precise64.box
echo "Install vbox guest additions plugin in vagrant"
vagrant plugin install  vagrant-vbguest
echo "vagrant UP"
vagrant up
echo "play ansible playbook"
cd ansible
ansible-playbook --inventory-file=hosts site.yml --private-key=~/.vagrant.d/insecure_private_key -u vagrant
echo "DONE. Ready fo 'vagrant ssh'"

