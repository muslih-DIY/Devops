Enable ssh in container
=======================
*   we are using debian image
apt-get install ssh

vim /etc/ssh/sshd_config
####   add "PermitRootLogin yes" into the file
####   Change port if rquired Port 2233


passwd root
####   update password of root user



