# Use a newer base image (Tomcat 9 + Java 17 Temurin) that supports cgroup v2
FROM tomcat:9.0-jdk17-temurin-jammy

# Clean existing apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your generated war file to tomcat webapps
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
