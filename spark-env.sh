#!/bin/bash

export SPARK_EXECUTOR_URI=http://pele.farmbio.uu.se/spark-mantl/spark-mantl-1.6.0.tgz

MANTL_API_MESOS_SECRET_PATH=/etc/sysconfig/mantl-api
if [ -f "$MANTL_API_MESOS_SECRET_PATH" ];
then
   MANTL_API_MESOS_SECRET=$(cat $MANTL_API_MESOS_SECRET_PATH) 
   echo "spark.mesos.principal=mantl-api" >> ./spark-defaults.conf
   echo "spark.mesos.secret=$MANTL_API_MESOS_SECRET" >> ./spark-defaults.conf
fi

