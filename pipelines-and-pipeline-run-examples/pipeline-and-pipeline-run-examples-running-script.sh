#!/bin/bash

# This bash script is responsible for running and setting up all the components of the user-greeter-pipeline.

# Applying the required tasks:
kubectl apply -f ./pipelines-and-pipeline-run-examples/basic-pipeline-tasks.yaml

# Applying the pipeline:
kubectl apply -f ./pipelines-and-pipeline-run-examples/basic-pipeline.yaml

# Applying the required pipelineRun:
kubectl apply -f ./pipelines-and-pipeline-run-examples/basic-pipeline-run.yaml