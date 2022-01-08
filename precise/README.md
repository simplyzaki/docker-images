### Introduction

Collection of Dockerfiles for container creation.

### Note

Containers created using Docker wont be able to set **ulimits**, so we would need to modify host ulimits running Docker service. For this do:

	> sudo service docker stop
	> sudo echo "limit nofile 262144 262144" >> /etc/init/docker.conf
	> sudo service docker start
