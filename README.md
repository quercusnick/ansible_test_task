# **Ansible test task**
Basic Ansible test task. Contains of two task.
1. Create Jinja template
2. Fix existing playbook

# Requirements

- Docker is installed
- Docker uses 172.17.0.0/16 as bridge network and there are no other running containers. Otherwise edit the host file

# Installation
- Clone this repository
- Execute `start.sh`
- `ssh -p 2222 centos@127.0.0.1` password: passwd2

# Test tasks
<br>
Create Jinja template.
Need to edit _templating.yml_ playbook in a such way that it creates a file on target hosts which contains the following data:

```
My OS: $OS_NAME
My Hostname: $HOST_HOSTNAME
MY IP: $eth0_IP
```

`ansible-playbook -i hosts templating.yml`
</br>

<br>
Fix existing playbook.
_troubleshoting.yml_ playbook fails. Need to fix it.

`ansible-playbook -i hosts troubleshoting.yml`
</br>