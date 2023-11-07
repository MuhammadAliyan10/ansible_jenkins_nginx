#!/bin/bash

JENKINS_URL="http://localhost:8080"
JENKINS_JOB="ansible_nginx"


JENKINS_AUTH="jenkins:110acf895be909cc0115c4f6ec011843ee"


java -jar jenkins-cli.jar -s $JENKINS_URL -auth $JENKINS_AUTH build $JENKINS_JOB
