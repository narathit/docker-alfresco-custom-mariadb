#!/bin/bash
mvn clean install; docker build . --tag my-acs-repo-mariadb:6.2.1-A8
