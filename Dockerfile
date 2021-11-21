# Pull base image 
FROM tomcat:8
# Maintainer 
MAINTAINER "parashu1151@gmail.com" 
COPY target/*.war /usr/local/tomcat/webapps/webapp.war

