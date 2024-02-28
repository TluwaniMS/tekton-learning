#!/bin/bash

# This bash script is responsible for running and setting up all the components of the volume-example task.

# Applying the required tasks:
kubectl apply -f ./task-and-task-run-examples/volume-task-example.yaml

kubectl apply -f ./task-and-task-run-examples/volume-task-run-example.yaml