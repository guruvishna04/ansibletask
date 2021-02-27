Role Name
=========

error debugging task

Role Variables
--------------
has already default values
* error_dir
* error_filename


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yml
  - hosts: aworker
    become: true
    roles:
      - { role: error-debugging, vars: [ { error_dir: "/home/vagrant/ansible/"} , {error_filename: "error-debugging.txt"} ] }

```
