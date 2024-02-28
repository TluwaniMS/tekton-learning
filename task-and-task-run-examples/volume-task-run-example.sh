#!/bin/bash

# This bash script is responsible for running and setting up all the components of the volume-example task.

kubectl apply -f ./task-and-task-run-examples/volume-task-example.yaml

kubectl apply -f ./task-and-task-run-examples/volume-task-run-example.yaml