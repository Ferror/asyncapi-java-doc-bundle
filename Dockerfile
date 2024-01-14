FROM maven:3.9.6-eclipse-temurin-21-alpine AS maven

FROM azul/zulu-openjdk-alpine:21

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "/root/.m2"

COPY --from=maven ${MAVEN_HOME} ${MAVEN_HOME}
COPY --from=maven /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
COPY --from=maven /usr/share/maven/ref/settings-docker.xml /usr/share/maven/ref/settings-docker.xml

RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn

COPY . /app/

WORKDIR /app/
