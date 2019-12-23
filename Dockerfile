FROM maven:latest
RUN mkdir /app/
WORKDIR /app/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package -f /app/boxfuse-sample-java-war-hello/
RUN cp /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /data_volume
CMD ["mvn"]