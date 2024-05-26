FROM gradle:7.2.0-jdk17 AS build

COPY . .

FROM openjdk:17.0.1-jdk-slim

EXPOSE 8080



COPY --from=build /build/libs/*.jar ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT-plain.jar

ENTRYPOINT ["java","-jar","ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT-plain.jar"]