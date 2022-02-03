# Kubernetes-Learnings
Store everything that I learned !!!
Download Docker!!
Download Steps in Amazon ec2 Instance:
#!/bin/bash
curl https://get.docker.com/ | bash

Docker Commands:
docker pull nginx
docker run -rm -dit --name nginx cont -p 9000:80 nginx
docker ps
docker ps -a
docker images
docker rmi <Imagename>
docker rm <contName>
docker exec -it <contName> bash
