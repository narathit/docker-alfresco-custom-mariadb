#!/bin/bash
mvn clean install; docker build . --tag my-acs-repo-mariadb:6.0.7-ga
