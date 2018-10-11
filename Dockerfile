FROM alfresco/alfresco-content-repository-community:6.1.0-ea

ARG TOMCAT_LIB_DIR=/usr/local/tomcat/lib

COPY target/libs $TOMCAT_LIB_DIR
