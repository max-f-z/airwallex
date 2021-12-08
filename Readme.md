### assignment

## Provision

In aliyun cloud shell or properly configured ansible client
```
ansible-playbook provision.yml
```


## Setup

provide property app.ini inventory

```
ansible-playbook -i app.ini -u root setup.yml --ask-pass
```

This will setup a new ansible user and disable root login permanantly and also disable password login
default root password is "@SuperStrong123"
make sure you have ssh keys generated in /home/shell/.ssh/id_rsa & id_rsa.pub

## Install app

```
ansible-playbook -i app.ini -u ansible app.yml
```
