#!/bin/bash

bash /scripts/build_config.sh /tomcat/webapps/eureka/WEB-INF/classes/eureka-client-dev.properties

export TOMCAT_OPTS=-Deureka.datacenter=cloud

bash /tomcat/bin/catalina.sh run
