[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Maxylakers/ml-microservices-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Maxylakers/ml-microservices-kubernetes/tree/master)

# A CircleCI status badge, included above

## Project Overview

In this project, we will operationalize a Machine Learning Microservice API. 

I have used a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The aim of this project however, is to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I have:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and made a prediction
* Improve the log statements in the source code for this application
* Configured Kubernetes and create a Kubernetes cluster
* Deployed a container using Kubernetes and made a prediction
* Uploaded a complete Github repo with CircleCI to indicate that the code has been tested


**The final implementation of the project will showcase one's abilities to operationalize production microservices.**

---

Setup the Environment

* Clone the repository
* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
# Complete Makefile as needed to install the dependencies in the requirements.txt file
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Upload Image to DockerHub:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally (Using Docker as driver to run Minikube)
* Create Flask app in Container
    *docker run -p 8000:80 max-app:v1.0
    *docker ps -- to view running containers.
* Run via kubectl
    * kubectl run max-kube-app --image=$dockerpath --port=80
    * kubectl get pods --to see the list of running pods
    *kubectl port-forward max-kube-app 8000:80 -- to forward the ports

Folder and File Structures

- app.py: our flask application file
- Makefile: Make utility file which defines set of tasks to be executed
- Dockerfile: file with instructions to build Docker images
- requirements.txt: file with listed project dependecies
- docker_out.txt and kubernetes_out.txt:These are the output files of running both the predictions in Docker and Kubernetes.
- make_predictions.sh, run_docker.sh, run_kubernetes.sh, upload_docker.sh: These are the script files with a sequence of commands ran to perform a given task.
