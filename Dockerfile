FROM openjdk:11-jdk-slim

WORKDIR /myapp

COPY myapp/target/myapp-1.0.0.jar myapp-1.0.0.jar


USER 1000

CMD ["java", "-jar", "myapp-1.0.0.jar"]

