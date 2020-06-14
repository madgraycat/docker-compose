FROM maven:3.5
RUN apt update
RUN apt  install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR ./boxfuse-sample-java-war-hello/
CMD ["mvn", "package"]
