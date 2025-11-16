# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps for a clean deployment
RUN rm -rf /usr/local/tomcat/webapps/*

# Set working directory
WORKDIR /usr/local/tomcat/webapps/

# Copy WAR file built by Maven into Tomcat (keep original name)
COPY target/*.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
