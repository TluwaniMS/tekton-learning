#!/bin/bash

kubectl apply -f ./tekton-github-trigger/github-trigger-secret.yaml

kubectl apply -f ./tekton-github-trigger/github-trigger-tasks.yaml

kubectl apply -f ./tekton-github-trigger/github-trigger-pipeline.yaml

kubectl apply -f ./tekton-github-trigger/github-trigger-trigger-template.yaml

kubectl apply -f ./tekton-github-trigger/github-trigger-trigger-binding.yaml

kubectl apply -f ./tekton-github-trigger/github-trigger-event-listener.yaml

kubectl apply -f ./tekton-github-trigger/github-trigger-ingress.yaml