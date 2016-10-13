#!/bin/bash

export SPARK_EXECUTOR_URI=http://pele.farmbio.uu.se/spark-mantl/spark-mantl-2.0.1.tgz

MANTL_API_MESOS_SECRET_PATH=/etc/sysconfig/mantl-api
if [ -f "$MANTL_API_MESOS_SECRET_PATH" ];
then
   MANTL_API_MESOS_SECRET=$(cat $MANTL_API_MESOS_SECRET_PATH) 
   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
   echo "spark.mesos.principal=mantl-api" >> $DIR/spark-defaults.conf
   echo "spark.mesos.secret=$MANTL_API_MESOS_SECRET" >> $DIR/spark-defaults.conf
fi

