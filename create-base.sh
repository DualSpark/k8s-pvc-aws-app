#!/bin/bash

kubectl create -f postgres-secret.yaml
kubectl create -f postgres-storage-class.yaml
kubectl create -f postgres-pv.yaml
