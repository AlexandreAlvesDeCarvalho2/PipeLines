FROM centos:latest 
LABEL MAINTAINER = "alexandre"
RUN yum -y install httpd
RUN yum -y install php
RUN yum -y systemctl start docker
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY AlexandreCarvalho_Projeto /var/www/html/
EXPOSE 80

