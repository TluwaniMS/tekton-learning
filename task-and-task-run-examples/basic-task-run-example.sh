#!/bin/bash

# This bash script is responsible for running and setting up all the components of the task-greeter task.

kubectl apply -f ./task-and-task-run-examples/basic-task-example.yaml

kubectl apply -f ./task-and-task-run-examples/basic-task-run-example.yaml