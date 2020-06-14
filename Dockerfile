FROM maven:latest
RUN yum update
RUN yum  install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR ./boxfuse-sample-java-war-hello/
CMD ["mvn", "package"]
