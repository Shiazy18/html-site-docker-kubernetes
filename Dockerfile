FROM ubuntu

RUN apt-get -y update

RUN rm /var/www/html/index.html

RUN apt-get install -y apache2

COPY . /var/www/html

EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND