#!/bin/bash

rm flink-metrics-prometheus_2.12-1.9.0.jar
rm hadoop.jar

wget https://repo1.maven.org/maven2/org/apache/flink/flink-metrics-prometheus_2.12/1.9.0/flink-metrics-prometheus_2.12-1.9.0.jar
wget https://repo1.maven.org/maven2/org/apache/flink/flink-shaded-hadoop-2-uber/2.8.3-10.0/flink-shaded-hadoop-2-uber-2.8.3-10.0.jar

mv flink-shaded-hadoop-2-uber-2.8.3-10.0.jar hadoop.jar

docker build -t gokcesurenkok/flink_hadoop_prometheus:latest .