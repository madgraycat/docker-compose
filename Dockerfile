FROM maven:latest
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR ./boxfuse-sample-java-war-hello/
CMD ["mvn", "package"]