#!/bin/bash


# This bash script is responsible for running and setting up all the components of the arithmetic-results-pipeline.

# Applying the required tasks:
kubectl apply -f ./tekton-results/tekton-results-task.yaml

kubectl apply -f ./tekton-results/tekton-results-pipeline.yaml

kubectl apply -f ./tekton-results/tekton-results-pipeline-run.yaml