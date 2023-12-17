#!/bin/bash
cd /usr/local/project
rm -rf demo/
git clone https://github.com/13693360699/demo.git
cd demo/
mvn package
mv target/demo-0.0.1-SNAPSHOT.jar ./docker/
mv deployment.yml ./docker/
mv service.yml ./docker/
cd docker/
docker build -t demo .
kubectl apply -f deployment.yml
kubectl apply -f service.yml