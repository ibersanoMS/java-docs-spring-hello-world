FROM openjdk:18-oracle

RUN mkdir /usr/app

COPY ./target/java-docs-spring-hello-world-0.0.1-SNAPSHOT.jar /usr/app

WORKDIR /usr/app

RUN sh -c 'touch java-docs-spring-hello-world-0.0.1-SNAPSHOT.jar'

ENTRYPOINT [ "java", "-jar", "java-docs-spring-hello-world-0.0.1-SNAPSHOT.jar" ]