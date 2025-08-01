# Use the official Tomcat image with JDK 17
FROM tomcat:9-jdk17

# Copy the WAR file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/

# Optional: Set permissions (usually not necessary for Tomcat to run)
RUN chmod 777 /usr/local/tomcat/webapps/*.war

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
