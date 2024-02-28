#!/bin/bash


# This bash script is responsible for running and setting up all the components of the arithmetic-results-pipeline.

# Applying the required tasks:
kubectl apply -f ./tekton-results/tekton-results-task.yaml

# Applying the pipeline:
kubectl apply -f ./tekton-results/tekton-results-pipeline.yaml

# Applying the required pipelineRun:
kubectl apply -f ./tekton-results/tekton-results-pipeline-run.yaml