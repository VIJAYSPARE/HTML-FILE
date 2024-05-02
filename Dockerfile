FROM ubuntu:latest
ARG DEBIAN FRONTEND-noninteractive
RUN apt-get update
RUN apt-get install -y apache? curl
COPY file.html /var/www/html/file.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apache2sti")
CMD ("-D", "FOREGROUND"]
EXPOSE 80


