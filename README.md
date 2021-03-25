# **Ansible test task**
Basic Ansible test task. Contains of two task.
1. Create Jinja template
2. Fix existing playbook

# Requirements

- Docker is installed
- Docker uses 172.17.0.0/16 as bridge network and there are no other running containers. Otherwise edit the host file

# Installation
- Clone this repository
- Execute start.sh

# Test tasks
<br>
Create Jinja template.
Need to edit  templating.yml playbook in such way that it creates a file on target hosts whic contains the following data:
```
My OS: $OS_NAME
My Hostname: $HOST_HOSTNAME
MY IP: $eth0_IP
```
</br>

<br>
Fix existing playbook.
troubleshoting.yml playbook fails. Need to fix it.
</br>