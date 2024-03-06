#!/bin/bash

# This bash script is responsible for running and setting up all the components of the event-greeter-listener.

# Applying the required tasks:
kubectl apply -f ./tekton-trigger/trigger-basic-pipeline-tasks.yaml

# Applying the pipeline:
kubectl apply -f ./tekton-trigger/trigger-basic-pipeline.yaml

# Applying the required triggerTemplate:
kubectl apply -f ./tekton-trigger/basic-trigger-template.yaml

# Applying the required triggerBinding:
kubectl apply -f ./tekton-trigger/basic-trigger-binding.yaml

# Applying the required RBAC:
kubectl apply -f ./tekton-trigger/basic-rbac.yaml

# Applying the required eventListener:
kubectl apply -f ./tekton-trigger/basic-event-listener.yaml
