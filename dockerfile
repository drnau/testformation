FROM ubuntu
RUN apt -y update
RUN apt -y install nginx
RUN apt -y install git
RUN cd /var/www/html
RUN git clone https://github.com/drnau/testformation.git
EXPOSE 80
CMD ["nginx","-g","daemon off;"]