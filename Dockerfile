FROM public.ecr.aws/docker/library/centos:7
LABEL MAINTAINER = "alexandre"
RUN yum update -y
RUN yum -y install httpd
RUN yum -y install php
CMD /usr/sbin/httpd -D FOREGROUND

WORKDIR /var/www/html
COPY Alexandre /var/www/html/
EXPOSE 80

