# Pull base image 
FROM tomcat:jre8
# Maintainer 
MAINTAINER "parashu1151@gmail.com" 

COPY /webapp/target/*.war /usr/local/tomcat/webapps/webapp.war
CMD ["catalina.sh","run"]
