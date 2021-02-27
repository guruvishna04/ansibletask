## working 

run command to copy ansible_data to ansible directory ( known problem with running ansible commands in the vagrant share directory)
ansible working directory :  /home/vagrant/ansible/

```sh
cd ~ && rm -rf ansible && mkdir ansible && cp  -r /ansible_data/. ansible && cd ansible

```

## ansible inventory file check

command to verify: 
```sh
ansible -i /ansible/ahosts --list-hosts all
ansible  --list-hosts all

```
## ansible ping test

```sh
ansible -m ping all
ansible -m command -a "/bin/false" \!local

```

## data structure

```tree
.
├── ahosts                              # ansible inventory file
├── ansible.cfg                         # ansible config file
├── readme.md
├── roles                               # roles are located in this folder
│   ├── error-debugging                 # ansible error debugging role check, readme.md for more information
│   │   ├── defaults
│   │   │   └── main.yml                
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   ├── install-packages                # ansible installtation package role, check readme.md for more information
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── vars
│   │       └── main.yml
│   ├── nginx-konfigurierende           # ansible nginx static server role, check readme.md for more information
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates                   # jinja templates are located here
│   │   │   ├── index.html.j2           
│   │   │   └── nginx.conf.j2
│   │   └── vars
│   │       └── main.yml
│   └── postleitzahl-aufloeser          # ansible zipcode role, check readme.md for more information
│       ├── defaults
│       │   └── main.yml
│       ├── meta
│       │   └── main.yml
│       ├── README.md
│       ├── tasks
│       │   └── main.yml
│       └── vars
└── runall-roles.yml
```

## run playbooks

run playbook using this command check readme.md each roles

* [error debugging role](roles/error-debugging/README.md)
* [postleitzahl-aufloeser](roles/postleitzahl-aufloeser/README.md)
* [nginx-konfigurierende](roles/nginx-konfigurierende/README.md)
* [install-packages](roles/install-packages/README.md)


```sh
ansible-playbook runall-roles.yml 
```
