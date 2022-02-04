FROM ubuntu
RUN apt -y update
RUN apt -y install nginx
RUN apt -y install git
ADD /identity/index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;""git","clone","https://github.com/drnau/testformation.git;"]
