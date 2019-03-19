FROM centos:7
LABEL maintainer="Sida Say <sida.say@khalibre.com>"

# Install packages necessary to run EAP
RUN yum update -y && yum -y install unzip && yum clean all

# Create a user and group used to launch processes
# The user ID 1000 is the default for the first "regular" user on Fedora/RHEL,
# so there is a high chance that this ID will be equal to the current user
# making it easier to use volumes (no permission issues)
RUN groupadd -r tomcat -g 1000 && useradd -u 1000 -r -g tomcat -m -d /opt/tomcat -s /sbin/nologin -c "Tomcat user" tomcat && \
    chmod 755 /opt/tomcat

# Set the working directory to jboss' user home directory
WORKDIR /opt/tomcat

# Specify the user which should be used to execute all commands below
USER tomcat
