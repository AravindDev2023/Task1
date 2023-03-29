From Ubuntu
RUN apt-get update
RUN apt-get install openjdk-11-jre-headless -y
RUN apt-get install wget -y
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz.asc
RUN tar -zxvf apache-tomcat-9.0.73.tar.gz.asc
RUN mv apache-tomcat-9.0.73.tar.gz tomcat1
RUN chmod -R 777 tomcat1
CMD ["/root/docker-auto/tomcat1/bin/catalina.sh", "run"]
