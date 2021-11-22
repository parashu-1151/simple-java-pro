# Pull base image 
FROM tomcat:8-jre8 as target

# Maintainer 
MAINTAINER "parashu1151@gmail.com" 
COPY target/*.war /usr/local/tomcat/webapps
