# Use OpenJDK 11 slim as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container


ARG jar_file=target/*.jar
# Copy the built JAR file into the container
COPY ${jar_file} app.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
