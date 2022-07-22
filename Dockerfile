FROM maven:3.8-openjdk-18
WORKDIR /usr/app

COPY . /usr/app/

RUN mvn install 

RUN cd target

RUN sh -c 'touch java-docs-spring-hello-world-0.0.1-SNAPSHOT.jar'

EXPOSE 80

ENTRYPOINT [ "java", "-jar", "java-docs-spring-hello-world-0.0.1-SNAPSHOT.jar" ]