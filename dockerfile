FROM   ubuntu
COPY jdk-8u221-linux-x64.tar.gz  /usr/local/
WORKDIR /usr/local/
RUN tar -zxf jdk-8u221-linux-x64.tar.gz && rm -rf jdk-8u221-linux-x64.tar.gz
ENV  JAVA_HOME /usr/local/jdk1.8.0_221/
ENV   CLASSPATH ${JAVA_HOME}/lib;${JAVA_HOME}/jre/lib;
ENV   PATH $PATH: ${JAVA_HOME}/bin
ADD  apache-tomcat-9.0.26.tar.gz  /usr/local/
RUN  rm -rf apache-tomcat-9.0.26.tar.gz
CMD ["/usr/local/apache-tomcat-9.0.26/bin/catalina.sh","run"]
