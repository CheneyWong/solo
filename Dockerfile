FROM maven:3
MAINTAINER Cheney <hq@gpio.me>

ADD . /solo
WORKDIR /solo
RUN mvn install -Dmaven.test.skip=true
WORKDIR /solo/target/solo

EXPOSE 8080

CMD ["/bin/sh", "-c", "java -cp WEB-INF/lib/*:WEB-INF/classes org.b3log.solo.Starter"]
