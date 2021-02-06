.PHONY: all
all: build

.PHONY: build
build:
	docker build --rm -t nextcloud-news-updater .

.PHONY: lint
lint:
	docker run --rm -it -v $(shell pwd)/Dockerfile:/Dockerfile replicated/dockerfilelint /Dockerfile
