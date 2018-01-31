FROM netflixoss/eureka:1.1.147

ADD config.properties /tomcat/webapps/eureka/WEB-INF/classes/config.properties
ADD eureka-client-dev.properties /tomcat/webapps/eureka/WEB-INF/classes/eureka-client-dev.properties
ADD eureka-client-dev.properties /tomcat/webapps/eureka/WEB-INF/classes/eureka-client.properties

COPY scripts/* scripts/

RUN chmod 777 -R scripts/

ENTRYPOINT ["/scripts/start.sh"]