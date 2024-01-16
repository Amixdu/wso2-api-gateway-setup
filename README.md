1. docker-compose build
2. docker-compose up
3. Access https://localhost:9443/

### compose file to run base image
```yaml
version: '3'
services:
  wso2am:
    image: wso2/wso2am:4.0.0-alpine
    ports:
      - "9443:9443"
      - "8280:8280"
      - "8243:8243"
    networks:
      - wso2net

networks:
  wso2net:
```

### compose file to run from Dockerfile
```yaml
version: '3'
services:
  wso2am:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "9443:9443"
    volumes:
      - ./exported-configs:/home/wso2carbon/wso2am-4.0.0/repository/
```