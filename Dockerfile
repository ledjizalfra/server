FROM openjdk:8-jre-alpine
#RUN mvn package
COPY target/server-0.0.1-SNAPSHOT.jar /app.jar
# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]