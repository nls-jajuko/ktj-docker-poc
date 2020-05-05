#FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN

#WORKDIR /tmp/
#COPY pom.xml /tmp/

#COPY app-resources /tmp/app-resources/
#COPY app-specific-code /tmp/app-specific-code/
#COPY webapp-map /tmp/webapp-map/
#COPY external-libs /tmp/external-libs/

#RUN mvn dependency:go-offline
#RUN mvn package

FROM jetty:9-jre8
LABEL maintainer="nls-jajuko"
#COPY --from=MAVEN_TOOL_CHAIN /tmp/webapp-map/target/oskari-map.war /var/lib/jetty/webapps/oskari-map.war
COPY webapp-map/target/oskari-map.war /var/lib/jetty/webapps/oskari-map.war
COPY oskari-ext.properties /var/lib/jetty/resources/

EXPOSE 8080
