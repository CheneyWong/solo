FROM maven:3
MAINTAINER Liang Ding <dl88250@gmail.com>

ADD . /solo
WORKDIR /solo
RUN mvn install -Dmaven.test.skip=true
WORKDIR /solo/target/solo

EXPOSE 80

CMD ["/bin/sh", "-c", "java -cp WEB-INF/lib/*:WEB-INF/classes org.b3log.solo.Starter"]