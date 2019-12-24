FROM java:openjdk-8-jdk
MAINTAINER Your Name <me@myaddress.com>
USER root
WORKDIR /opt
RUN useradd --user-group --shell /bin/false mule && chown mule /opt
COPY    ./mmc-3.8.x-web.tar.gz /opt
COPY    ./start.sh /opt
# Using the most recent MMC 3.8.x version
RUNtar xzf mmc-3.8.x-web.tar.gz \
  && ln -s mmc-3.8.x-web mmc \
  && chmod 755 mmc-3.8.x-web \
  && chmod 755 start.sh \
  && rm mmc-3.8.x-web.tar.gz
# Mule environment vars
ENV MMC_HOME /opt/mmc
# Volume mount points
VOLUME ["/opt/mmc/apache-tomcat-7.0.52/logs", "/opt/mmc/apache-tomcat-7.0.52/conf", "/opt/mmc/apache-tomcat-7.0.52/bin", "/opt/mmc/apache-tomcat-7.0.52/mmc-data"]
# Mule work directory
# WORKDIR /opt
USER mule
# start tomcat && tail -f /var/lib/tomcat7/logs/catalina.out
CMD [ "./start.sh" ]
# Expose default MMC port
EXPOSE 8585
