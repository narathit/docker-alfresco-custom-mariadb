#!/bin/bash
mvn clean install; docker build . --tag my-acs-repo-mariadb
