#!/bin/sh
# If the apache-tomcat location is different for you, be sre to change
cd /opt/mmc/apache-tomcat-7.0.52
bin/startup.sh && tail -f logs/catalina.out
