FROM java:openjdk-8-jdk
# 3.9.0 ee branch
MAINTAINER Your Name <me@myaddress.com>
USER root
WORKDIR /opt
RUN useradd --user-group --shell /bin/false mule && chown mule /opt
COPY    ./mule-ee-distribution-standalone-3.9.0.tar.gz /opt
COPY    ./start.sh /opt
RUN tar xzf mule-ee-distribution-standalone-3.9.0.tar.gz \
  && ln -s mule-enterprise-standalone-3.9.0 mule \
  && chmod 755 mule-enterprise-standalone-3.9.0 \
  && chown -R mule:mule mule-enterprise-standalone-3.9.0 start.sh \
  && chmod 755 start.sh \
  && rm mule-ee-distribution-standalone-3.9.0.tar.gz
# Mule environment vars
ENV MULE_HOME /opt/mule
ENV PATH $MULE_HOME/bin:$PATH
# Volume mount points for persisten storage, create others for domains and conf if necessary
VOLUME ["/opt/mule/logs", "/opt/mule/apps"]
USER mule
ENTRYPOINT ["mule"]
CMD ["console"]
# Expose port 7777 if you plan to use MMC
EXPOSE 7777
# Expose additional ports as needed for your API use
#EXPOSE 8081
EXPOSE 8082
#EXPOSE 8083
