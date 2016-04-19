FROM mesosphere/spark:1.6.0
MAINTAINER Marco Capuccini, <marco.capuccini@it.uu.se>

RUN apt-get update && apt-get install -y dnsutils

