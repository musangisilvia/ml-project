[![musangisilvia](https://circleci.com/gh/musangisilvia/ml-project.svg?style=svg)](https://app.circleci.com/pipelines/github/musangisilvia/ml-project/3/workflows/888db8b0-d3d3-4178-b456-a146866ed5ac)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
python3 -m virtualenv  ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* Install the latest minikube stable release on x86-64 linux 
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl or run minikube with ```minikube start```

### Output files
#### docker_out.txt
When you spawn a docker container and execute the make_prediction.sh script, you get output like the one contained in this file. 

#### kubernetes_out.txt
When you spawn a kubernetes pod and execute the make_prediction.sh script, you get output like the one contained in this file.

### YAML Files
#### config.yml
For circleci workflow and jobs

### Shell Scripts
#### run_docker.sh
To build and run docker image

#### upload_docker.sh
To upload image to docker hub

#### run_kubernetes.sh
To spin up a pod containing the prediction app using image from docker hub

#### make_predictions.sh
Test case to be predicted

### Makefile
Used to simplify the process of setting up the environment (creating a venv, installing dependancies etc)

### Dockerfile
Configuration for Docker - copy the app to the defined working directory.

### Dependancy files
#### requirements.txt
Defines all the dependancies needed to run the app.

### Main file
#### app.py
This contains the logic the app uses to make predictions.

### Recommendations

> You can adopt this prediction model in other areas and industries as you see fit. E.g. to predict vehicle prices based on conditions like country of origin and engine power. 

# #AI