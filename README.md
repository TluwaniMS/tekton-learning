# Tekton learning

## What is Tekton?

Tekton is an open-source framework native to Kubernetes, designed specifically for crafting continuous integration and delivery (CI/CD) setups. With Tekton, you can construct, test, and deploy your applications seamlessly, whether across various cloud providers or on local infrastructure.

## Tekton Task:

A Task is a collection of Steps that you define and arrange in a specific order of execution as part of your continuous integration/deployment flow. A Task executes as a Pod on your Kubernetes cluster.In Tekton, a "Task" is a reusable, composable unit of work within a pipeline.

## Tekton TaskRun:

A TaskRun object instantiates and executes a Task.
It represents the actual execution of a Task's steps, which are defined in the Task specification.