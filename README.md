# ansible-ubuntu-dev
Configure my Unbuntu environment with Ansible

## Requirements

Ansible is installed

```
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

## Usage
```
make roles
make all
```

or 

```
make play PLAYBOOK=cpp.yml
```
