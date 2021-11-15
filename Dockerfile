# Pull base image 
FROM centos:latest
RUN yum install java-1.8.0-openjdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.72.tar.gz 
RUN mv apache-tomcat-8.5.72/* /opt/tomcat/
# Maintainer 
MAINTAINER "parashu1151@gmail.com" 
COPY ./webapp/target/webapp.war /opt/tomcat/webapps
EXPOSE 8081:8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
