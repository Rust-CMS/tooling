#!/bin/sh

kubectl delete deployment reverseproxy-deployment
kubectl delete configmap nginx-config
kubectl create configmap nginx-config --from-file=nginx.conf
kubectl apply -f .