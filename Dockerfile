FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install -y apt-utils
RUN apt install -y nginx
RUN apt install -y nano wget curl systemctl
RUN systemctl nginx start
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
