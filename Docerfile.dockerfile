FROM centos:7

RUN yum install -y epel-release && \
    yum -y install ansible vim openssh-server openssh-clients iproute net-tools less sudo sshpass && \
    useradd centos &&  usermod -a -G wheel centos && \
    echo password1 | passwd centos --stdin && \
    echo 'centos ALL=(ALL:ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

ADD ansible_task /home/centos/ansible_task

RUN chown -R centos:centos /home/centos

CMD [ "/usr/sbin/init" ]