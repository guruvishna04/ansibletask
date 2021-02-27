Role Name
=========

install services task

Role Variables
--------------

* apt_packages

Example Playbook
----------------


```yaml
  - hosts: aworker
    become: true
    roles:
      - { role: install-packages }

```