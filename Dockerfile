FROM openjdk:11-jre-slim

COPY ./target/resourcesapi-0.0.0-DEVEL.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch resourcesapi-0.0.0-DEVEL.jar'

ENTRYPOINT ["java","-jar","resourcesapi-0.0.0-DEVEL.jar"]
