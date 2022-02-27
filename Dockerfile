FROM maven:3.8.2-jdk-11
RUN apt-get install unzip git -y
RUN mkdir app
WORKDIR /app
COPY . .
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git . && pwd && mv /app/target/*.war /opt/app.war