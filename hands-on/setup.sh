sh cluster-start.sh

sleep 20

docker run --network=hands-on_kafka-tier -ti bitnami/kafka:latest kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 2 --partitions 2 --topic cars

docker run -d --network=hands-on_kafka-tier --name=consumer-0 -ti bitnami/kafka:latest kafka-console-consumer.sh --bootstrap-server broker-0:9092,broker-1:9093 --topic cars --consumer-property group.id=car-group

docker run -d --network=hands-on_kafka-tier --name=consumer-1 -ti bitnami/kafka:latest kafka-console-consumer.sh --bootstrap-server broker-0:9092,broker-1:9093 --topic cars --consumer-property group.id=car-group
