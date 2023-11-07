#!/bin/bash

job_url="http://localhost:8080/job/ansible_nginx/build"

api_token="110acf895be909cc0115c4f6ec011843ee"


curl -X POST $job_url --user "aliyan:$api_token"
