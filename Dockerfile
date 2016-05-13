FROM jboss/wildfly:9.0.1.Final
MAINTAINER Enterprise AppsMaker mastercraft@tcs.com
USER root

RUN cd /opt/jboss/wildfly/modules/system/layers/base/org && \
 mkdir  /postgresql && \
 chmod 777 /postgresql && \
 mkdir  /main && \
 chmod 777 /main && \
 curl --location --output postgresql-9.4-1201-jdbc4.jar --url http://search.maven.org/remotecontent?filepath=org/postgresql/postgresql/9.4-1201-jdbc4/postgresql-9.4-1201-jdbc4.jar && \
