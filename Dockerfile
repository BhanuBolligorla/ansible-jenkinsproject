# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into Tomcat webapps, keep its original name
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
