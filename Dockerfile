# Use the official OpenJDK base image
FROM adoptopenjdk:17-jre-hotspot

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/springboot2-jpa-crud-example-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "app.jar"]
