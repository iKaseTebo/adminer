FROM ikasetebo/nginx-php5:v1.00

RUN apt-get install -y php5-mysql  \
    -y php-pear \
    -y php5-dev \
    -y adminer


COPY ./nginx-conf/sites-available/default /etc/nginx/sites-available/default
VOLUME ["usr/share/nginx/html", "/etc/nginx"]