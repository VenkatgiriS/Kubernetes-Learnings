# Kubernetes-Learnings
Store everything that I learned !!!



Download Docker!!
Download Steps in Amazon ec2 Instance:
#!/bin/bash
curl https://get.docker.com/ | bash

Docker Commands:
docker pull nginx
docker run --rm -dit --name <contName> -p 9000:80 nginx
docker ps
docker ps -a
docker images
docker kill $(docker ps -aq)
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
docker image tag <imageid> venkatgiri/k8s_practice

Docker image building out of container:
docker commit <contName/Id>

Rename container:
docker rename <contId> <newname>

---------
docker build:
docker build -t venkatgiri/<new image name>:v1 <path>


-----------
Network:
docker network ls 

------------
kops create cluster --name=venkatgiri.xyz --state=s3://venkatgiri.xyz --zones=us-east-1a --node-count=2 --node-size=t2.micro --master-size=t2.small --master-volume-size 20 --node-volume-size 10 --dns-zone=venkatgiri.xyz --yes

kops get cluster --state s3://venkatgiri.xyz
kops get ig --name venkatgiri.xyz --state s3://venkatgiri.xyz
kops edit ig --name=venkatgiri.xyz master-us-east-1a --state s3://venkatgiri.xyz
kops edit ig --name=venkatgiri.xyz nodes --state s3://venkatgiri.xyz
kops edit ig nodes
kops update cluster --name venkatgiri.xyz --yes --state  s3://venkatgiri.xyz
kops rolling-update cluster --cloudonly --yes
kops rolling-update cluster  --name venkatgiri.xyz --yes --state  s3://venkatgiri.xyz
kops delete cluster --name=venkatgiri.xyz --state s3://venkatgiri.xyz --yes

--------------
aws credentials location in linux:
/root/.aws

kops export (env)
export NAME=venkatgiri.xyz
export KOPS_STATE_STORE=s3://venkatgiri.xyz
alias ku='kubectl'

kops get cluster -o yaml

--------
usage of tmux for multiple tabs in terminal:
tmux
control + b
shift + %
--------
kubectl asking username and pwd:
kops update cluster ${NAME} --yes --state ${KOPS_STATE_STORE} --admin

Login to master node:
ssh -i ~/.ssh/id_rsa ubuntu@api.venkatgiri.xyz

------
script to ease the add cluster 
 #!bin/bash

kops edit ig --name=venkatgiri.xyz master-us-east-1a --state s3://venkatgiri.xyz && kops edit ig --name=venkatgiri.xyz nodes --state s3://venkatgiri.xyz &&  kops update cluster --name venkatgiri.xyz --yes --state  s3://venkatgiri.xyz






