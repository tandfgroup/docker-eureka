#!/bin/bash

bash /scripts/build_config.sh /tomcat/webapps/eureka/WEB-INF/classes/config.properties

bash /tomcat/bin/catalina.sh run