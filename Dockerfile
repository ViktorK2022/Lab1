FROM maven:3.8.4-openjdk-17-slim
COPY /target/simpleapi-0.0.1-SNAPSHOT.jar myapi.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/myapi.jar"]
