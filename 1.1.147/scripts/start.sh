#!/bin/bash

bash /scripts/build_config.sh /tomcat/webapps/eureka/WEB-INF/classes/eureka-client-$1.properties

bash /tomcat/bin/catalina.sh run