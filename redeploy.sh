#!/bin/sh

kubectl delete deployments --all --namespace=default
kubectl delete services --all --namespace=default
kubectl delete configmaps --all --namespace=default
kubectl delete statefulset --all
kubectl delete pvc --all --namespace=default
kubectl delete pv --all
kubectl delete ingress-rules
kubectl delete ingress-nginx
git pull
kubectl apply -f config-maps
kubectl apply -f volumes
kubectl apply -f services
kubectl apply -f deployments
kubectl apply -f ingress-nginx
kubectl apply -f ingress-rules