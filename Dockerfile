FROM ubuntu:20.04
RUN apt-get update && apt install -y nano wget curl
RUN apt-get install systemctl
RUN apt-get install nginx
RUN systemctl nginx start
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
