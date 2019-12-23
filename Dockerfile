FROM maven:latest
RUN mkdir /app/
WORKDIR /app/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /app/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /opt
CMD ["mvn"]