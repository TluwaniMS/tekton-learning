# Tekton learning

## What is Tekton?

Tekton is an open-source framework native to Kubernetes, designed specifically for crafting continuous integration and delivery (CI/CD) setups. With Tekton, you can construct, test, and deploy your applications seamlessly, whether across various cloud providers or on local infrastructure.

## Tekton Task:

A Task is a collection of Steps that you define and arrange in a specific order of execution as part of your continuous integration/deployment flow. A Task executes as a Pod on your Kubernetes cluster.In Tekton, a "Task" is a reusable, composable unit of work within a pipeline.

## Tekton TaskRun:

A TaskRun object instantiates and executes a Task.
It represents the actual execution of a Task's steps, which are defined in the Task specification.

## Tekton Pipeline:

A Pipeline is a collection of Tasks organized in a sequence or parallel execution order. It provides a higher-level abstraction for defining the overall workflow of a CI/CD process.

## Tekton PipelineRun:

A PipelineRun is an instance of a Pipeline execution. It references the Pipeline and associated PipelineResources to trigger the execution of tasks and track the progress of the pipeline run.

## Tekton Workspaces:

A Tekton workspace typically refers to the directory or environment where Tekton pipelines are executed.
In the context of Tekton pipelines, a workspace is a directory within the container where tasks and pipelines run.

## Basic Tekton commands:

#### Get all TaskRuns:

```
kubectl get taskruns
```

#### Get a specific TaskRun:

```
kubectl get taskrun <taskrun-name>
```

#### Get TaskRun logs:

```
kubectl logs --selector=tekton.dev/taskRun=<taskrun-name>
```

#### Get PipelineRun logs:

```
tkn pipelinerun logs <pipeline-run-name> -f -n <namespace>
```

## Basic Tekton Examples:

`NB!`

Please ensure that you have a [minikube instance installed](https://minikube.sigs.k8s.io/docs/start/) and [Tekton CLI](https://tekton.dev/docs/cli/) installed.

#### Install Tekton Pipelines:

```
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
```

#### Monitor the Installation:

```
kubectl get pods --namespace tekton-pipelines --watch
```

## Basic task and taskRun examples:

```
./task-and-task-run-examples/basic-task-run-example.sh
```

## Basic volume, task and taskRun example:

```
./task-and-task-run-examples/volume-task-run-example.sh
```

## Basic pipeline examples:

```
./pipelines-and-pipeline-run-examples/pipeline-and-pipeline-run-examples-running-script.sh
```

## Basic workspace usage example(s):

```
./workspaces/workspace-example-running-script.sh
```

## Basic task results consumption example:

```
./tekton-results/tekton-results-example-running-script.sh
```

# Tekton Triggers

A Tekton Trigger is a mechanism used in Tekton Pipelines, which is a Kubernetes-native continuous integration and delivery (CI/CD) framework. Tekton Triggers allow you to automate the execution of Tekton PipelineRuns based on events that occur within the Kubernetes cluster or external systems.

* ### EventListeners:

A Tekton EventListener is a component of the Tekton Triggers system within the Tekton Pipelines framework. It serves as the entry point for receiving external events and triggering the execution of Tekton PipelineRuns or other actions based on those events.

* ### TriggerTemplate:

A TriggerTemplate serves as a blueprint for defining the resource you wish to instantiate or execute, like a TaskRun or PipelineRun, triggered by your EventListener upon detecting an event.

* ### TriggerBinding:

A TriggerBinding, employed in the Tekton Triggers framework as a Kubernetes Custom Resource, delineates the organization of incoming event data and specifies the methodology for retrieving pertinent details from it. Essentially, it enables the extraction of specific fields from an event payload and links them to designated parameters, subsequently facilitating their utilization within a TriggerTemplate.

## Basic Tekton Trigger Examples:

#### Install Tekton Triggers:

```
kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
```

```
kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml
```

## Basic Tekton Triggers Example:

```
./tekton-trigger/tekton-triggers-running-script.sh
```

## Port forwarding:

```
kubectl port-forward service/<service-listener> 8080
```

## Triggering the eventListener:

```
curl -v -H 'content-Type: application/json' -d '{"username-1": "Tluwani","username-2":"Lerumo"}' http://localhost:8080
```

## Checking if the trigger has been triggered, and the result:

```
tkn pipelinerun logs <pipeline-run-name> -f
```

## Basic Github Triggers Example:

```
./tekton-github-trigger/tekton-github-trigger.sh
```


