FROM ubuntu
RUN apt -y update
RUN apt -y install nginx
RUN apt -y install git
ADD git clone https://github.com/drnau/testformation.git /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]