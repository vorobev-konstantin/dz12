FROM maven:3.8.2-jdk-11
RUN apt-get install unzip git -y
RUN mkdir app
WORKDIR /app
RUN git clone https://github.com/vorobev-konstantin/App42PaaS-Java-MySQL-Sample.git . && mvn package && mv /app/target/*.war /opt/app.war