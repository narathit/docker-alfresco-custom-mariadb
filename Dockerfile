FROM alfresco/alfresco-content-repository-community:6.0.7-ga

RUN echo -e '\n\
index.recovery.mode=AUTO\n\
dir.root=/usr/local/tomcat/alf_data\n\
ftp.enabled=false\n\
imap.server.enabled=false\n\
email.server.enabled=false\n\
cifs.enabled=false\n\
\n\
' >> /usr/local/tomcat/shared/classes/alfresco-global.properties

ARG TOMCAT_LIB_DIR=/usr/local/tomcat/lib

COPY target/libs $TOMCAT_LIB_DIR
