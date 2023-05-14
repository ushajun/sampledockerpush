FROM ubuntu
LABEL author=usha
RUN apt update -y && apt install apache2 -y
COPY . /var/www/html
ENV app=v1
EXPOSE 80
ENTRYPOINT apache2ctl -D FOREGROUND
