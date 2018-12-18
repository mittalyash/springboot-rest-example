FROM java:8
WORKDIR /usr/src
MAINTAINER Yash "mittalyash32@gmail.com"
COPY . .
EXPOSE 9080

CMD java -jar /root/.m2/repository/uk/co/cyberbliss/books-example/1.0-SNAPSHOT/books-example-1.0-SNAPSHOT.jar
