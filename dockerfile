FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y sudo
RUN sudo apt-get install -y default-jdk
RUN sudo apt-get install -y maven
RUN sudo apt-get install -y git 

RUN git clone https://github.com/blissnd/spring3-mvc-maven-xml-hello-world ./ndb-maven-test

COPY . /ndb-maven-test

WORKDIR /ndb-maven-test/

ENTRYPOINT ["mvn"]
CMD ["jetty:run"]
