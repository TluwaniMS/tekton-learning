#!/bin/bash

# This bash script is responsible for running and setting up all the components of the user-greeter-pipeline.

# Applying the required tasks:
kubectl apply -f ./pipelines-and-pipeline-run-examples/basic-pipeline-tasks.yaml

kubectl apply -f ./pipelines-and-pipeline-run-examples/basic-pipeline.yaml

kubectl apply -f ./pipelines-and-pipeline-run-examples/basic-pipeline-run.yaml