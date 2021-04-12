FROM centos:latest
MAINTAINER Naveen.knaveen007singh@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
#RUN unzip kindle.zip
RUN cp -rvf photogenic/* .
#RUN cp -rvf markups-kindle/* .
RUN rm -rf photogenic photogenic.zip
#RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
