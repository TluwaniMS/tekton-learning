#!/bin/bash

# This bash script is responsible for running and setting up all the components of the dynastic-pipeline.

kubectl apply -f ./workspaces/mwenemutapa-workspace-tasks.yaml

kubectl apply -f ./workspaces/nguni-workspace-tasks.yaml

kubectl apply -f ./workspaces/workspace-pipeline.yaml

kubectl apply -f ./workspaces/workspace-pipeline-run.yaml