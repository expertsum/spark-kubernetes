#!/bin/bash

kubectl create configmap cluster-keys --from-file gcskey.json
kubectl apply -f spark-defaults.yml
kubectl apply -f spark-master-statefulset.yml
kubectl apply -f spark-worker-statefulset.yml
kubectl apply -f jupyter-notebook-statefulset.yml
