# Use the official WSO2 API Manager base image
FROM wso2/wso2am:4.0.0

COPY --chown=wso2carbon:wso2 ./configs /home/wso2carbon/wso2am-4.0.0/repository/

# Start the API Manager
CMD ["/home/wso2carbon/wso2am-4.0.0/bin/wso2server.sh"]