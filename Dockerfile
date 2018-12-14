FROM java:8
WORKDIR /usr/src
MAINTAINER Kiran "kiranbdvt@gmail.com"
COPY . .
EXPOSE 9080

ADD /usr/src/target/books-example-1.0-SNAPSHOT.jar  /application.jar

CMD java -jar /application.jar
