FROM java:8
MAINTAINER Kiran "kiranbdvt@gmail.com"

EXPOSE 9080

ADD /var/lib/jenkins/workspace/Multiplelinepipeline_master/target/books-example-1.0-SNAPSHOT.jar  /application.jar

CMD java -jar /application.jar
