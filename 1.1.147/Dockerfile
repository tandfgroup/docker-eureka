FROM netflixoss/eureka:1.1.147

ADD config.properties /tomcat/webapps/eureka/WEB-INF/classes/config.properties

COPY scripts/* scripts/

ENTRYPOINT ["/scripts/start.sh"]