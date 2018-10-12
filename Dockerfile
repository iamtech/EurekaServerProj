FROM java:8
VOLUME /tmp
ADD target/EurekaServerProj-0.0.1-SNAPSHOT.jar EurekaServerProj.jar
RUN bash -c 'touch /EurekaServerProj.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /EurekaServerProj.jar"]