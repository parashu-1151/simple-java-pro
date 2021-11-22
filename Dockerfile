# Pull base image 
FROM tomcat:8-jre8 
RUN yum install java-1.8.0-openjdk -y
# Maintainer 
MAINTAINER "parashu1151@gmail.com" 
COPY target/*.war /usr/local/tomcat/webapps
