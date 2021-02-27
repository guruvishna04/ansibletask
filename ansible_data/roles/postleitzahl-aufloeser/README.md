Role Name
=========

zipcode task

Role Variables
--------------

has already default values

* zipcode

Example Playbook
----------------


```yml
  - hosts: aworker
    become: true
    roles:
      - { role: postleitzahl-aufloeser, vars: { zipcode: "04229"} }

```