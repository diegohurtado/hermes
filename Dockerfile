FROM qa.stratio.com/stratio/ubuntu-base:16.04

MAINTAINER stratio

ARG VERSION

COPY target/hermes-0.2.0-SNAPSHOT.jar /hermes.jar
COPY docker/docker-entrypoint.sh /
COPY src/main/resources/application.conf /
RUN touch /hermes.log

EXPOSE 8080

ENTRYPOINT ["/docker-entrypoint.sh"]