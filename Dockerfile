FROM openjdk
MAINTAINER Regi <regi.muci@fshnstundet.info>
COPY target/JenkinsTest.jar target/JenkinsTest.jar
ENTRYPOINT ["java", "-jar", "target/JenkinsTest.jar"]
EXPOSE 8080