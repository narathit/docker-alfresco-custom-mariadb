FROM alfresco/alfresco-content-repository-community:7.0.0

# RUN echo -e '\n\
# index.recovery.mode=AUTO\n\
# dir.root=/usr/local/tomcat/alf_data\n\
# ftp.enabled=false\n\
# imap.server.enabled=false\n\
# email.server.enabled=false\n\
# cifs.enabled=false\n\
# \n\
# ' >> /usr/local/tomcat/shared/classes/alfresco-global.properties

ARG TOMCAT_LIB_DIR=/usr/local/tomcat/lib

COPY target/libs $TOMCAT_LIB_DIR
COPY src/tomcat/shared/classes/alfresco/web-extension  /usr/local/tomcat/shared/classes/alfresco/web-extension
