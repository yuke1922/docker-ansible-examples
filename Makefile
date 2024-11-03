IMG_NAME=yuke1922/docker-ansible-win
IMG_VERSION=v0.1
CONTAINER_NAME=ansible-runner
.DEFAULT_GOAL := cli

.PHONY: build
build:
	docker build -t $(IMG_NAME):$(IMG_VERSION) . 

.PHONY: cli
cli:
	docker run -it --rm --name ${CONTAINER_NAME}\
		-v $(shell pwd):/local \
		-w /local \
		$(IMG_NAME):$(IMG_VERSION) bash

.PHONY: run
run:
	docker run -it --rm --name ${CONTAINER_NAME}\
		-v $(shell pwd):/local \
		-w /local \
		$(IMG_NAME):$(IMG_VERSION) ansible-playbook playbooks/00-main.yml -i inventory.yml --ask-vault-pass

.PHONY: clean
clean:
	docker container prune -f
	docker image prune -f -a
	docker builder prune -f -a