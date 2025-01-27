FROM openjdk:11-jdk-slim

ARG JAR_FILE=myapp-1.0.0.jar

WORKDIR /myapp


COPY ${JAR_FILE} app.jar

USER 1000

CMD ["java", "-jar", "app.jar"]
