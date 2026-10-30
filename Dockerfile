FROM docker.io/eclipse-temurin:21-jre
WORKDIR /app
COPY /quiz-0.0.1-SNAPSHOT.jar app.jar
COPY /application.properties application.properties
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.config.location=file:application.properties"]
CMD ["java", "-jar", "app.jar" , "--spring.config.location=file:application.properties"]

