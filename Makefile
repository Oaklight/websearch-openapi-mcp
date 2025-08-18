DOCKER_REPO = oaklight/openwebui-tool-server
VERSION := $(shell cat VERSION)

.PHONY: build push

build:
	docker build -t $(DOCKER_REPO):$(VERSION) -t $(DOCKER_REPO):latest .

push:
	docker push $(DOCKER_REPO):$(VERSION)
	docker push $(DOCKER_REPO):latest