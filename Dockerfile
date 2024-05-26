FROM gradle:7.2.0-jdk17 AS build

COPY . .

FROM openjdk:17.0.1-jdk-slim

EXPOSE 8080

RUN mkdir /app

COPY --from=build /build/libs/*.jar /app/ASSIGNMENSINGALARITY.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/ASSIGNMENSINGALARITY.jar"]