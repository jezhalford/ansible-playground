Ansible Playground
==================

A pair of virtual machines for practising with Ansible.

## Getting Started
You'll need to install:
 * Vagrant - https://www.vagrantup.com/downloads.html
 * VirtualBox - https://www.virtualbox.org/wiki/Downloads

Then, clone this repository and run

    vagrant up

This will create a "control" and a "host" VM. You can then use Ansible from the "control" machine to modify the "host" machine.

You can SSH to the control machine by running

    vagrant ssh control

This machine comes pre-loaded with Ansible configured to control a host called "playground" - this is the host machine. A sample playbook is at `/vagrant/playbooks/test.yml`. Run it like this -

    cd /vagrant/playbooks
    ansible-playbook test.yml

To verify any changes to the host machine, you can SSH to it by running

    vagrant ssh host

NOTE: you must exit the control machine before trying to SSH to the host machine - you can't run `vagrant *` commands from inside either machine.

---

Ansible install script from: https://gist.github.com/trinitronx/bdfd3cbb338767e58299
