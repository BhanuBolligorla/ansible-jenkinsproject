# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps if you want a clean Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Set working directory in container
WORKDIR /usr/local/tomcat/webapps/

# Copy WAR file built by Maven into Tomcat
COPY target/*.war /usr/local/tomcat/webapps/

# Expose Tomcat default port
EXPOSE 8082

# Start Tomcat
CMD ["catalina.sh", "run"]
