#!/bin/sh

kubectl delete deployments --all --namespace=default
kubectl delete services --all --namespace=default
kubectl delete pvc --all --namespace=default
kubectl delete configmaps --all --namespace=default
kubectl delete pv us-chirpstack-postgres-data
git pull
kubectl apply -f config-maps
kubectl apply -f volumes
kubectl apply -f services
kubectl apply -f deployments