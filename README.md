# Moonstone - Containerized
This is the default installation of Moonstone with all of its components.  It's the easiest and quickest way for you to get the entire Moonstone platform installed with default configuration in your VM so that you can start play around with.  The following components will be installed, each in its own docker container, and all wired up together using docker compose configuration

## Platform components
- [MongoDB](https://www.mongodb.com)
- [RabbitMQ](https://www.rabbitmq.com/)
- [Redis](https://redis.io/)
- [Kafka](https://kafka.apache.org/)
- [Zookeeper](https://zookeeper.apache.org/)
- [Elasticsearch](https://www.elastic.co/)
- [Spring Cloud Config](https://spring.io/projects/spring-cloud-config)

## Moonstone applications
- **pegasus-local-api** : Private API for tenant/user/application management
- **pegasus-public-api** : Public API for tenant/user/application management
- **pegasus-web** : Tenant management portal
- **rhea-private-api** : Private API for firmware catalog integration
- **rhea-web** : Firmware catalog portal
- **kronos-api** : Public API for device management
- **kronos-web** : Device management portal
- **kronos-engine** : Backend engine
- **kronos-cron** : Backend cron jobs
- **apollo-web** : Dashboard portal

## System requirements
- 2 vcpus
- 4 GB RAM
- [Docker](https://docs.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Installation
- git clone https://github.com/arrow-acs/moonstone-docker-compose
- cd moonstone-docker-compose
- bin/env.sh
- docker-compose up

## Default admin account
- **Username** : sysadmin@arrowconnect.io
- **Password** : Arrow-Connect-123

## Application URLs
- **pegasus-local-api** : http://_your-vm-ip_:7820/swagger-ui.html
- **pegasus-public-api** : http://_your-vm-ip_:7924/swagger-ui.html
- **pegasus-web** : http://_your-vm-ip_:7920
- **rhea-private-api** : http://_your-vm-ip_:7821/swagger-ui.html
- **rhea-web** : http://_your-vm-ip_:7922
- **kronos-api** : http://_your-vm-ip_:7923/swagger-ui.html
- **kronos-web** : http://_your-vm-ip_:7921
- **apollo-web** : http://_your-vm-ip_:7925

## Telemetry endpoints
- **MQTT** : tcp://_your-vm-ip_:1883
- **AMQP** : amqp://_your-vm-ip_:5672
