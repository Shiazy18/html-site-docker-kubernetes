FROM ubuntu

RUN apt-get -y update

RUN apt-get install -y apache2

RUN rm /var/www/html/index.html



COPY . /var/www/html

EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND