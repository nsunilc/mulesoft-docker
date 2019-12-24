```shell
# build the image
docker build -t maxmule/mmc .

# run the mmc app
docker run -itd --name mmc -p 8585:8585 -v /opt/mmc/mmc-data:/opt/mmc/apache-tomcat-7.0.52/mmc-data -v /opt/mmc/logs:/opt/mmc/apache-tomcat-7.0.52/logs maxmule/mmc

# check mmc is running
docker ps
docker logs -f mmc
