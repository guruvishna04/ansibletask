## copy files from host to ansible 

```
cd ~ && rm -rf ansible && mkdir ansible && cp  -r /vagrant_data/. ansible && cd ansible

```

ansible working directory :  /home/vagrant/ansible/

##  ansible inventory file

command to verify: 
```
ansible -i /vagrant_data/ahosts --list-hosts all
ansible  --list-hosts all

```
##  testing ansible working

```
ansible -m ping all
ansible -m command -a "/bin/false" \!local

```

file structure
```
├───ipoque
│   ├───ansible_data
│   │   └───playbooks   # ansible playbook folder
│   └───iac
│       ├───
│       ├───ansiblemanger.sh # provisoning file
│       └───bootstrap.sh # provisoning file
│       └─── Vagrantfile # vagrant proviser file
```

## run playbooks

```
ansible-playbook playbooks/uname.yml 
```
## task 1:

```
ansible-playbook playbooks/install-services.yml

```
## task 2:

```
ansible-playbook playbooks/error-debugging.yml

```
## task3

```
ansible-playbook playbooks/postal-code.yml --extra-vars "zipcode=04229"
```