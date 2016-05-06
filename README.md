ansible-role-python
===================

Download and install python from sources

Role Variables
--------------

Variables that can be defined from the command line are:
  - `version`: The python version to install. Default is 2.7.11
  - `j`: The argument for make's "j". Current default is number of processors + 1

Example Playbook
----------------

If you save this as `main.yml`, you can install to localhost using this line:
 - `ansible-playbook main.yml -i "localhost," -c local -b --ask-become-pass`

```
---
  - hosts: all
    roles:
      - python
```


License
-------

BSD
