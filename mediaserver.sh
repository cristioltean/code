#!/bin/bash
echo 'start deploying'
echo 'starting jackett deployment'
kubectl apply -f run-jackett.yaml

echo 'finished jackett deployment'

echo "creating jackett service"

kubectl apply -f jackett-svc.yaml

echo "finished creating jackett service"

echo "deploy meltallb config"

kubectl apply -f deploy-lb.yaml

echo "all done"