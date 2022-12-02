FROM tomcat:jre8-alpine
LABEL MAINTAINER="srinathuppu"
RUN useradd tomcat
WORKDIR /usr/local/tomcat
COPY . .
COPY target/maven-standalone-application.war /usr/tomcat/webapps/maven-standalone-application.war
EXPOSE 8080
USER tomcat
CMD [ "catalina.sh" "run" ]