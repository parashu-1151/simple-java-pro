# Pull base image 
FROM tomcat:8-jre8 

# Maintainer 
MAINTAINER "parashu1151@gmail.com" 
COPY /webapp/target/*.war /usr/local/tomcat/webapps
