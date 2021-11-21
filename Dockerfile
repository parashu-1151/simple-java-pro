# Pull base image 
FROM tomcat:8
# Maintainer 
MAINTAINER "parashu1151@gmail.com" 
WORKDIR /var/lib/jenkins/workspace/dacker-ansible-demo/webapp/target
COPY target/*.war /usr/local/tomcat/webapps/webapp.war

