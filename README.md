# Unofficial Eureka Docker Image

These unofficial Eureka docker image are made to encapsulate provisioning of
the default [`Netflix-Skunkworks/zerotodocker`](https://hub.docker.com/r/netflixoss/eureka/) images.

This repository is maintained for the purposes of the _Taylor & Francis Group_.
It is made public and available for free use. The  _Taylor & Francis Group_
reserves the right to make changes at any time without notice.

## What is Eureka?

[`Eureka`](https://github.com/Netflix/eureka/) is a REST (Representational State Transfer) based service that is primarily used in the AWS cloud for locating services for the purpose of load balancing and failover of middle-tier servers.

# Properties Through Environment Variables.

For relevant kafka Properties have a look [`here`](https://github.com/Netflix/eureka/wiki/Configuring-Eureka).

The deploy guide for EC2 Servers is available [`here`](https://github.com/Netflix/eureka/wiki/Deploying-Eureka-Servers-in-EC2).


The properties are available in the following format

- All the properties are converted to lowercase.
- Underscores will be replaced with dots.
- 0 will be replaced with hyphens. (Please refer to [`Standards Here`](http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap01.html))

```
For eg:

to populate 'eureka.us-east-1.availabilityZones=us-east-1c,us-east-1d,us-east-1e'

The environment variable would be

EUREKA_US0EAST01_AVAILABILITYZONES=US-EAST-1C,US-EAST-1D,US-EAST-1E
```

To run the image just simply

```
docker run tandfgroup/eureka:1.1.147
```

the images exposes 8080 port.








