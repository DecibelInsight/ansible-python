ansible-role-python
===================

Download and install python from sources

Role Variables
--------------

Variables that can be defined from the command line are:
  - `version`: The python version to install. Default is 2.7.11
  - `python_from_sources`: Installs python from source
    - `j`: The argument for make's "j". Current default is number of processors + 1
    - `python_prefix`: The prefix to pass down to `conifigure --prefix=` value
  - `python_from_ppa`: Installs python from a ppa
    - `python_ppa`: ppa to use when installing from ppa

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
