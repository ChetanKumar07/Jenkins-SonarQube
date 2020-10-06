# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

ADD C:\Windows\System32\config\systemprofile\AppData\Local\Jenkins.jenkins\workspace\SonarQube-Integration\target\myweb-0.0.7-SNAPSHOT.war myweb-0.0.7-SNAPSHOT.war

COPY C:\Windows\System32\config\systemprofile\AppData\Local\Jenkins.jenkins\workspace\SonarQube-Integration\target\myweb-0.0.7-SNAPSHOT.war /usr/local/webapps/

EXPOSE 8080

CMD java -jar myweb-0.0.7-SNAPSHOT.war
