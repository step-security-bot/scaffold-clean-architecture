FROM eclipse-temurin:17-jdk-alpine@sha256:2be4813fc9cecaa6054abc518b2ed75a8d4c6db449abb2f16a03f5ed81e4a01f
VOLUME /tmp
COPY r2dbc-example.jar app.jar
ENV JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=70 -Djava.security.egd=file:/dev/./urandom"
ENTRYPOINT [ "/bin/sh", "-c", "/opt/java/openjdk/bin/java $JAVA_OPTS -jar /app.jar" ]
