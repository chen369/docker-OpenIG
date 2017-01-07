FROM tomcat:8-jre8
MAINTAINER Chen Chiu <docker-maintainer@blitzcorp.org>
RUN wget http://maven.forgerock.org/repo/repo/org/forgerock/openig/openig-war/4.0.0/openig-war-4.0.0.war && \
rm -rf $CATALINA_HOME/webapps/ROOT && \
    mv openig-war-4.0.0.war $CATALINA_HOME/webapps/ROOT.war

ENV CATALINA_OPTS="-Xmx2048m -server"

