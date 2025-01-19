FROM maven:3.9.6-sapmachine-21 AS build

LABEL Maintaner="Baltix"

COPY pom.xml .
COPY src src

RUN mvn clean package -DskipTests #delete skipping tests in runtime

FROM openjdk:21-jdk

COPY --from=build target/auction.service-0.0.1-SNAPSHOT.jar ./backend.jar

ENTRYPOINT ["java", "-jar", "backend.jar"]