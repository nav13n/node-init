# Define the docker hub username
DOCKER_HUB_USER := nav13n

# Define the docker hub repository
DOCKER_HUB_REPO := node-init

# Define the docker image version
VERSION := 0.0.1

# Define the docker image tag
TAG := $(DOCKER_HUB_USER)/$(DOCKER_HUB_REPO):$(VERSION)

# Define the docker image build command
build:
	@echo "Building docker image..."
	docker build -t $(TAG) .

# Define the docker image push command
push:
	@echo "Pushing docker image to docker hub..."
	docker push $(TAG)

# Define the docker image run command
run:
	@echo "Running docker image..."
	docker run -d -p 8080:8080 $(TAG)

# Define the docker image stop command
stop:
	@echo "Stopping docker container..."
	docker stop $(shell docker ps -q)

# Define the docker image clean command
clean:
	@echo "Removing docker image..."
	docker rmi $(TAG)

# Define the docker image help command
help:
	@echo "Usage: make [build|push|run|stop|clean|help]"

# Define the docker image default command
.DEFAULT_GOAL := help