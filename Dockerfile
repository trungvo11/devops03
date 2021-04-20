FROM centos:latest
<<<<<<< HEAD
RUN yum install httpd zip unzip -y
=======
RUN yum install httpd zip unzip
>>>>>>> 2dab77c11d1e3463d5d1651022861ce507df6176
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/builderz.zip /var/www/html
WORKDIR /var/www/html
RUN unzip builderz.zip
RUN cp -rvf construction-company-website-template/* .
RUN rm -rf construction-company-website-template builderz.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
