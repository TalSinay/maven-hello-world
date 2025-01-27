FROM openjdk:11-jdk-slim

WORKDIR /myapp

# Use a variable for the JAR file version (provided at build time)
ARG JAR_FILE=myapp-1.0.0.jar
COPY ${JAR_FILE} app.jar

USER 1000

CMD ["java", "-jar", "app.jar"]
