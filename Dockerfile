FROM tomcat:8.0.20-jre8
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-application.war
COPY index.hmtl
ADD https://google.com
