FROM jboss/wildfly:9.0.1.Final
MAINTAINER Enterprise AppsMaker mastercraft@tcs.com
USER root

RUN mkdir /opt/jboss/wildfly/modules/system/layers/base/org/postgresql && \
 chmod 777 /opt/jboss/wildfly/modules/system/layers/base/org/postgresql && \
 mkdir /opt/jboss/wildfly/modules/system/layers/base/org/postgresql/main && \
 chmod 777 /opt/jboss/wildfly/modules/system/layers/base/org/postgresql/main && \
 cd  /opt/jboss/wildfly/modules/system/layers/base/org/postgresql/main && \
 curl --location --output postgresql-9.4-1201-jdbc4.jar --url http://search.maven.org/remotecontent?filepath=org/postgresql/postgresql/9.4-1201-jdbc4/postgresql-9.4-1201-jdbc4.jar
 
COPY Deployment/module.xml /opt/wildfly-9.0.1.Final/modules/system/layers/base/org/postgresql/main
COPY Deployment/oracle /opt/wildfly-9.0.1.Final/modules/system/layers/base/com/oracle