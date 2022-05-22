# alfresco docker using mariadb

### build

```
mvn clean install
docker build -t my-acs-repo-mariadb .
```

### Build:

```
mvn dockerfile:build
```

### Push with authentication (with ~/.docker/config.json):

```
mvn dockerfile:push
```

### Push with authentication (with $MAVEN_HOME/settings.xml):

```
mvn dockerfile:push -Ddockerfile.useMavenSettingsForAuth=true
```
