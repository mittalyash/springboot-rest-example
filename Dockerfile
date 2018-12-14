FROM java:8
WORKDIR /usr/src
MAINTAINER Kiran "kiranbdvt@gmail.com"
COPY . .
EXPOSE 9080

ADD /var/lib/jenkins/workspace/springRestAppl_localbranch/target/books-example-1.0-SNAPSHOT.jar  /books-example-1.0-SNAPSHOT.jar

CMD java -jar /books-example-1.0-SNAPSHOT.jar
