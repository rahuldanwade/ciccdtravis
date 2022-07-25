FROM openjdk:17-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY ciccdtravis.jar ciccdtravis.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar ciccdtravis.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ciccdtravis.jar
