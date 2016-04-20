#!/bin/bash

SPARK_HOST=spark.service.consul
SPARK_PORT=$(dig +short $SPARK_HOST SRV | awk '{print $3}' | sort | head -1) 
echo mesos://$SPARK_HOST:$SPARK_PORT

