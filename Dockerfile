FROM ubuntu:latest

RUN apt update && apt-get install -y telnet && apt install -y iputils-ping && apt install openssh-server sudo -y && apt install vim sudo -y

# Create a user “sshuser” and group “sshgroup” , -m: --create-home
RUN groupadd sshgroup && useradd -ms /bin/bash -g sshgroup sshuser --password $(echo "1qaz@WSX" | openssl passwd -1 -stdin)

# Create sshuser directory in home
RUN mkdir -p /home/sshuser/.ssh

# Create RSA-KEY folder
RUN mkdir -p /home/sshuser/.ssh/authorized_keys/

# Copy the ssh public key in the authorized_keys file. The idkey.pub below is a public key file you get from ssh-keygen. They are under ~/.ssh directory by default.
# COPY idkey.pub /home/sshuser/.ssh/authorized_keys

# change ownership of the key file. 
RUN chown sshuser:sshgroup /home/sshuser/.ssh/authorized_keys && chmod 600 /home/sshuser/.ssh/authorized_keys

# Start SSH service
# RUN service ssh start

# Expose docker port 22
EXPOSE 22

# set entrypoint to restart ssh automatically
ENTRYPOINT service ssh restart && bash