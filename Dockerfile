# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into Tomcat webapps
COPY target/myweb-8.3.2-SNAPSHOT.war /usr/local/tomcat/webapps/myweb.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
