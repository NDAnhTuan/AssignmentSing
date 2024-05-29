# FROM java:17
# ADD /build/libs/*.jar dockerapp.jar
#
# COPY . .
# EXPOSE 8080
# FROM openjdk:17.0.1-jdk-slim
#
# COPY --from=build /build/libs/*.jar ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT-plain.jar

# ENTRYPOINT ["java","-jar","ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT-plain.jar"]

FROM gradle:4.7.0-jdk8-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM openjdk:8-jre-slim

EXPOSE 8080

RUN mkdir /app

COPY --from=build /home/gradle/src/build/libs/*.jar /app/ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT.jar"]

