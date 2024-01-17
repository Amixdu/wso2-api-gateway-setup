
## Method 1: Build image from configs
```yaml
version: '3'
services:
  wso2am:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "9443:9443"
      - "8280:8280"
      - "8243:8243"
```
### Steps:
1. docker-compose build
2. docker-compose up
3. Access https://localhost:9443/

### After making changes to the configuration
This is to copy the updated configs to the 'configs' folder, so that the next time docker-compose build is run, itll get updated with the new configs
1. bash update.sh (update id and wso2am version accordingly)



## Method 2: Run from configured image
Note: configured.tar image is not uploaded. Steps given below to create it. This method is best suited once development is finalized.

### Dockerfile:
```yaml
version: '3'
services:
  wso2am:
    image: wso2-api-manager:latest
    ports:
      - "9443:9443"
      - "8280:8280"
      - "8243:8243"
    networks:
      - wso2net

networks:
  wso2net:
```
### Steps:
1. docker load -i wso2-api-manager.tar
2. docker-compose up
3. Access https://localhost:9443/

### After making changes to the configuration
This is to copy the updated configs to the 'configs' folder, and build an updated image, and convert it to a tar
1. bash update.sh (update id and wso2am version accordingly)
2. docker build -t wso2-api-manager .
3. docker save -o wso2-api-manager.tar wso2-api-manager