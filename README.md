# Kubernetes-Learnings
Store everything that I learned !!!
Download Docker!!
Download Steps in Amazon ec2 Instance:
#!/bin/bash
curl https://get.docker.com/ | bash

Docker Commands:
docker pull nginx
docker run --rm -dit --name nginx <contName> -p 9000:80 nginx
docker ps
docker ps -a
docker images
docker rmi <Imagename>
docker rm <contName>
docker exec -it <contName> bash

-----
Edit Nginx Welcome Page in Container.
Goto -> /usr/share/nginx/html

----
Install Editor in a container:
apt-get update
apt-get install nano/vm

----------
docker push:
docker push venkatgiri/k8s_practice

Image tagging:
docker image tag a8020895bfb5 venkatgiri/k8s_practice

Docker image building out of container:
docker commit <contName/Id>

Rename container:
docker rename <contId> <newname>
