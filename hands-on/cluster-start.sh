docker stop $(sudo docker ps -aq --filter ancestor=bitnami/kafka:latest)
docker rm $(sudo docker ps -aq --filter ancestor=bitnami/kafka:latest)
docker-compose rm -svf
docker-compose up