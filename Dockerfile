FROM java:8
WORKDIR /usr/src
MAINTAINER deepti "punj.deepti@gmail.com"
COPY . .
EXPOSE 9080

CMD java -jar /target/books-example-1.0-SNAPSHOT.jar
