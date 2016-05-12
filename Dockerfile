FROM jboss/wildfly:9.0.1.Final
MAINTAINER Enterprise AppsMaker mastercraft@tcs.com
USER root

ENV WILDFLY_VERSION 9.0.1.Final
ENV JBOSS_HOME /opt/jboss/wildfly
ENV POSTGRESQL_VERSION 9.4-1201-jdbc4					   

ARG DB_HOST=postgres
ARG DB_NAME=eamapp
ARG DB_USER=postgres
ARG DB_PASS=p@ssw0rd

RUN curl --location --output postgresql-${POSTGRESQL_VERSION}.jar --url http://search.maven.org/remotecontent?filepath=org/postgresql/postgresql/${POSTGRESQL_VERSION}/postgresql-${POSTGRESQL_VERSION}.jar && \