FROM openjdk:8-jre-alpine
COPY openshift-path-example-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]