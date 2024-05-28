FROM java:17
ADD /build/libs/*.jar dockerapp.jar

COPY . .
EXPOSE 8080
FROM openjdk:17.0.1-jdk-slim





COPY --from=build /build/libs/*.jar ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT-plain.jar

ENTRYPOINT ["java","-jar","ASSIGNMENTSINGALARITY-0.0.1-SNAPSHOT-plain.jar"]