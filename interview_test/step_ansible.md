# Scenario 2 - Ansible


1. Ensure the ansible is working with the localhost

2. user ansible ad hoc command to print the kernel version of the localhost

3. Create a role named test.

4. Using playbook test, create 5 directories in /tmp if not already existed.

<br><br>


Advanced & Questions
- can you define the precedence of the ansible variables (vars, hostvars, groupvars, extra-vars)?
- use a jinja2 template, to create file in tmp with the host IP and HOSTNAME as content of the file
- what is ansible vault and can you demonstrate how to use it?