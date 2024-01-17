### To start up
1. docker-compose build
2. docker-compose up
3. Access https://localhost:9443/

### After making changes to the configuration
This is to copy the updated configs to the 'configs' folder, so that the next time docker-compose build is run, itll get updated with the new configs
1. bash update.sh (update id and wso2am version accordingly)
