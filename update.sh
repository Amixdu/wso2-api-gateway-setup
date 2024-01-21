#!/bin/bash

# Delete the local 'configs' folder and its contents
rm -rf ./configs

# Copy the contents from the Docker container to the 'configs' folder
docker cp container_id:/home/wso2carbon/wso2am-4.0.0/repository/ ./configs
