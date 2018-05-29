FROM maven:3
MAINTAINER Cheney <hq@gpio.me>

ADD . /solo
ADD ./src/main/resources/rel /solo/src/main/resources
WORKDIR /solo
RUN mvn install -Dmaven.test.skip=true
WORKDIR /solo/target/solo

EXPOSE 8080

CMD ["/bin/sh", "-c", "java -cp WEB-INF/lib/*:WEB-INF/classes org.b3log.solo.Starter"]
