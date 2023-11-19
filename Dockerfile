FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

ENV PORT 8761

EXPOSE 8761

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

