FROM hub.c.163.com/library/ubuntu
RUN apt-get update
RUN mkdir -p /usr/local/jdk1.8.0_131
ADD /usr/local/java/jdk1.8.0_131 /usr/local/jdk1.8.0_131
ENV JAVA_HOME /usr/local/jdk1.8.0_131
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH .:$JAVA_HOME/lib
ADD target/springboot-test-1.0-SNAPSHOT.jar /var
RUN java -jar /var/springboot-test-1.0-SNAPSHOT.jar &
EXPOSE 1
