sh cluster-start.sh

sleep 20

docker run --network=hands-on_kafka-tier -ti bitnami/kafka:latest kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 2 --partitions 2 --topic cars