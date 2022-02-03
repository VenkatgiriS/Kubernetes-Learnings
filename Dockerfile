FROM ubuntu:20.04
RUN apt update && apt install -y nano wget curl
RUN apt install nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
