FROM tomcat:8.0
ADD build/libs/*.war /usr/local/tomcat/webapps
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]