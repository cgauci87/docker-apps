#!/bin/bash

# Start Zookeeper first
echo "Starting Zookeeper..."
docker-compose up -d zookeeper
sleep 30

# Start Kafka after Zookeeper
echo "Starting Kafka..."
docker-compose up -d kafka
sleep 30

# Start Elasticsearch after Kafka
echo "Starting Elasticsearch..."
docker-compose up -d elasticsearch
sleep 30

# Start Logstash after Elasticsearch
echo "Starting Logstash..."
docker-compose up -d logstash
sleep 30

# Start Kibana after Logstash
echo "Starting Kibana..."
docker-compose up -d kibana
sleep 30

# Start Cassandra node last
echo "Starting Cassandra node..."
docker-compose up -d cassandra

echo "All services started!"
