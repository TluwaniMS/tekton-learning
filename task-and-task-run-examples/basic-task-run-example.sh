#!/bin/bash

# This bash script is responsible for running and setting up all the components of the task-greeter task.

# Applying the required tasks:
kubectl apply -f ./task-and-task-run-examples/basic-task-example.yaml

# Applying tasRun:
kubectl apply -f ./task-and-task-run-examples/basic-task-run-example.yaml