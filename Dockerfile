FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get -y install openjdk-8-jdk wget

# Create Tomcat directory
RUN mkdir /usr/local/tomcat

# Download latest Tomcat (replace with latest version)
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz -O /tmp/tomcat.tar.gz

# Extract Tomcat
RUN cd /tmp && tar xvfz tomcat.tar.gz

# Move extracted files to Tomcat directory
RUN cp -Rv /tmp/apache-tomcat-9.0.83/* /usr/local/tomcat/

