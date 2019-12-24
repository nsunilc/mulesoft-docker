# mulesoft-docker
dockerize mulesoft runtime and mmc

Below details can done on cloud platforms like AWS EC2, Azure instance or GCS or local bare metal servers running any linux flavour

## Folder Structure for Builds
```shell

ls src/docker/mule
  MMC-3.8.0  MuleEE-3.9.0
ls src/docker/mule/MMC-3.8.0
  Dockerfile  mmc-3.8.x-web.tar.gz  start.sh
ls src/docker/mule/MuleEE-3.9.0
  Dockerfile  mule-enterprise-standalone-3.9.0  mule-ee-distribution-standalone-3.9.0.tar.gz
 
 ```
### Apply Local Changes to Mule Configuration Files
```shell

tar xzf mule-ee-distribution-standalone-3.9.0.tar.gz
export MULE_HOME=~/src/docker/mule/MuleEE-3.9.0/mule-enterprise-standalone-3.9.0
cd $MULE_HOME
# apply mule license
bin/mule -installLicense _path_to_your_license.lic
# re-create tar
tar czf mule-ee-distribution-standalone-3.9.0.tar.gz mule-enterprise-standalone-3.9.0

```
### Folder Structure for Docker Volumes
```shell

sudo mkdir /opt/mmc
sudo mkdir /opt/mmc/logs
sudo mkdir /opt/mmc/mmc-data
sudo chmod -R 777 /opt/mmc
sudo mkdir /opt/mule-enterprise-standalone-3.9.0
sudo mkdir /opt/mule-enterprise-standalone-3.9.0/apps
sudo mkdir /opt/mule-enterprise-standalone-3.9.0/conf
sudo mkdir /opt/mule-enterprise-standalone-3.9.0/domains
sudo mkdir /opt/mule-enterprise-standalone-3.9.0/logs
sudo chmod -R 777 /opt/mule-enterprise-standalone-3.9.0
sudo ln -s /opt/mule-enterprise-standalone-3.9.0 /opt/mule
ls -l /opt
  drwxrwxrwx. 4 root root     34 Feb  2 15:43 mmc
  drwxrwxrwx. 6 mule mule     57 May 24 15:05 mule-enterprise-standalone-3.9.0
  
```

In the repo we have two folders one for mmc and runtime, under these we have the dockerfile which can be used to build and run the container apps. each has readme file with detailed instructions for build and run steps. 
