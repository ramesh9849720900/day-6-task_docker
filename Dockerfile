FROM tomcat:8
LABEL DevOps=IMS
ENV NEXUS_URL=http://15.207.89.59:8081/repository/maven-releases/in/javahome/myweb/0.0.5/myweb-0.0.5.war
RUN apt-get update && apt-get install -y wget
RUN wget -O /usr/local/tomcat/webapps/myweb.war ${NEXUS_URL}
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
