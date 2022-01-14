#!/bin/bash

# - Build Image Docker

cd App

docker build -t app-devops:1.0 .

# - Pushing image dockerhub

docker tag app-devops:1.0 borgito/app-devops:1.0
docker push borgito/app-devops:1.0

cd ..

# - Define Dnsname
ip_ingress=$(minikube ip)

sudo -- bash -c  "echo $ip_ingress app-desafio-dev.local >> /etc/hosts"


# - Deploy helm

helm upgrade --install --wait --timeout 5m0s chart-app ./chart-app \
           --set image.repository=borgito/app-devops \
            --set image.tag=1.0 \
           --set service.port=80

