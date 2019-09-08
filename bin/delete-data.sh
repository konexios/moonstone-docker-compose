#!/bin/bash

set -x

sudo docker ps | grep "moonstone" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "moonstone" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm

sudo docker ps | grep "mongodb" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "mongodb" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
sudo docker volume ls | grep "mongodb" | awk '{print $2}' | xargs --no-run-if-empty sudo docker volume rm

sudo docker ps | grep "elasticsearch" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "elasticsearch" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
sudo docker volume ls | grep "elasticsearch" | awk '{print $2}' | xargs --no-run-if-empty sudo docker volume rm

sudo docker ps | grep "kafka" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "kafka" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
sudo docker volume ls | grep "kafka" | awk '{print $2}' | xargs --no-run-if-empty sudo docker volume rm

sudo docker ps | grep "rabbitmq" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "rabbitmq" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
sudo docker volume ls | grep "rabbitmq" | awk '{print $2}' | xargs --no-run-if-empty sudo docker volume rm

sudo docker ps | grep "zookeeper" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "zookeeper" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
sudo docker volume ls | grep "zookeeper" | awk '{print $2}' | xargs --no-run-if-empty sudo docker volume rm

sudo docker ps | grep "redis" | awk '{print $1}' | xargs --no-run-if-empty sudo docker stop
sudo docker ps -a | grep "redis" | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
sudo docker volume ls | grep "redis" | awk '{print $2}' | xargs --no-run-if-empty sudo docker volume rm
