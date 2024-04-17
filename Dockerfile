# Use the Maven image with OpenJDK 17
FROM maven:3.8.3-openjdk-17

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the test123 folder from the host to the container
COPY test123 /usr/src/app/test123

# Change directory to test123
WORKDIR /usr/src/app/test123

# Run Maven to clean and install the application
RUN mvn clean install

# Start the application
CMD ["java", "-jar", "/usr/src/app/test123/target/test123-0.0.1-SNAPSHOT.jar"]