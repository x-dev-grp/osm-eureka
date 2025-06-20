# Use a lightweight OpenJDK base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file (update the name if different)
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Expose the Eureka port
EXPOSE 8761

# Set the default command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
