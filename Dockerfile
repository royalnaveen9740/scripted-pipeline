

FROM centos:latest
MAINTAINER Naveen.knaveen007singh@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

# FROM centos:latest
# MAINTAINER Naveen.knaveen007singh@gmail.com
# RUN yum install -y httpd \
#  zip \
# unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip kindle.zip
# RUN cp -rvf markups-kindle/* .
# RUN rm -rf __MACOSX markups-kindle kindle.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE  80

# FROM ubuntu:latest
# MAINTAINER Naveen.knaveen007singh@rediffmail.com
# RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install tzdata
# RUN apt-get install -y apache2 \ 
#   zip \
#   unzip 
# ENV TZ=Asia/Kathmandu
# RUN ln -snf /usr/shar/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone  
# RUN dpkg-reconfigure --frontend noninteractive tzdata
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/soft-team.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip soft-team.zip
# RUN cp -rvf bootstrap-agency-template/* .
# RUN rm -rf soft-team.zip bootstrap-agency-template
# CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
# EXPOSE  80
