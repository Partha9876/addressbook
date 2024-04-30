FROM tomcat:8.5.72-jdk-openjdk-buster

Env MAVEN_HOME /usr/share/maven
Env MAVEN_VERSION 3.8.4

WORKDIR /app

RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share && \
    mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share maven && \
    ln -s /usr/share/maven/bim/mvn /usr/bin//mvn && \
    apt-get claen && \WORKDIR
    rm -rf /var/lib/apt/lists/*

COPY ./pom.xml ./pom.xml
COPY ./src ./src

Run mvn package

run rm -rf /usr/local/tomact/webapps/*

run cp /app/target/addressbook.war /usr/local/tomact/webapps

expose 8080

cmd ["catallina.sh", "run"]
