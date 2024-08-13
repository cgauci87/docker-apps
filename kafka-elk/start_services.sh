#!/bin/bash

# Start Zookeeper first
echo "Starting Zookeeper..."
docker-compose up --build -d zookeeper
sleep 30

# Start Kafka after Zookeeper
echo "Starting Kafka..."
docker-compose up --build -d kafka
sleep 30

# Start Elasticsearch after Kafka
echo "Starting Elasticsearch..."
docker-compose up --build -d elasticsearch
sleep 30

# Start Logstash after Elasticsearch
echo "Starting Logstash..."
docker-compose up --build -d logstash
sleep 30

# Start Kibana after Logstash
echo "Starting Kibana..."
docker-compose up --build -d kibana
sleep 30

# Start Cassandra node last
echo "Starting Cassandra node..."
docker-compose up --build -d cassandra

echo "All services started!"
