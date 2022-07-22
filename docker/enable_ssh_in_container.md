#Enable ssh in container
=======================
#######   we are using debian image
* apt-get install ssh

* vim /etc/ssh/sshd_config
####   add "PermitRootLogin yes" into the file
####   Change port if rquired Port 2233


####   update password of root user
* passwd root



## Add mount volum to the present working container
==========================

  docker commit <containerid> <newimagename>
  docker run -it -v <HOstdirectory>:<ContainerDir> <newimagename> --name=<newcontainername> --network="<host/bridge/other>"
 

