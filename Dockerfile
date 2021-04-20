FROM centos:latest
RUN yum install httpd zip unzip -
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/builderz.zip /var/www/html
WORKDIR /var/www/html
RUN unzip builderz.zip
RUN cp -rvf construction-company-website-template/* .
RUN rm -rf construction-company-website-template builderz.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
