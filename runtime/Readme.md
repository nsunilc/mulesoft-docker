```shell
# build the image
docker build -t maxmule/mule39ee .

# run the mule server
docker run -itd --name mule -p 8082:8082 -v /opt/mule/apps:/opt/mule/apps -v /opt/mule/logs:/opt/mule/logs maxmule/mule39ee

# check mule server is running
docker ps
docker logs -f mule
