FROM mesosphere/spark:1.6.0
MAINTAINER Marco Capuccini, <marco.capuccini@it.uu.se>

RUN apt-get update && apt-get install -y dnsutils
ADD spark-env.sh /opt/spark/dist/conf/spark-env.sh
ADD get-master.sh /opt/spark/dist/get-master.sh
ADD spark-defaults.conf /opt/spark/dist/conf/spark-defaults.conf

