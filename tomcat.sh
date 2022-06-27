#!/bin/bash
yum update -y
yum install wget -y
yum install java-1.8.0-openjdk -y
https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz
tar -xzf apache-tomcat-9.0.64.tar.gz
mv apache-tomcat-9.0.64 tomcat
cd tomcat
cd webapps
cp /home/ec2-user/vprofile-v1/target/vprofile-v1.war .
cd ../bin
./startup.sh
