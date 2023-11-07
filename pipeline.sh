#!/bin/bash

# Jenkins job URL to trigger the build
JENKINS_JOB_URL="http://localhost:8080/job/ansible_nginx/build"

# Use the Jenkins API token for authentication
JENKINS_API_TOKEN="110acf895be909cc0115c4f6ec011843ee"

# Make the API call to trigger the build
curl -X POST $JENKINS_JOB_URL --user "aliyan:$JENKINS_API_TOKEN"
