### Task 2 - Ansible questions


1. Ensure the ansible is working with the localhost
``` ansible localhost -m ping ```

2. user ansible ad hoc command to print the kernel version of the localhost
``` ansible localhost -m shell -a "uname -a" ```

3. Create a role named test.
``` ansible-galaxy role init test ```

4. Using playbook test, create 5 directories in /tmp if not already existed.

```
- name: create directory if they don't exist
  file:
    path: "{{ item }}"
    state: directory
    owner: root
    group: root
    mode: 0775
  loop:
    - /data/directory
    - /data/another
```


+ advanced & questions
- can you define the precedence of the ansible variables (vars, hostvars, groupvars, extra-vars)?
- use a jinja2 template, to create file in tmp with the host IP and HOSTNAME as content of the file
- what is ansible vault and can you demonstrate how to use it?