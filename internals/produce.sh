docker run --network=hands-on_kafka-tier -v "$PWD"/data:/tmp/data bitnami/kafka:latest /bin/bash -c "kafka-console-producer.sh --broker-list broker-0:9092,broker-1:9093 --topic cars --property parse.key=true
 --property key.separator=: < /tmp/data/cars.txt"
