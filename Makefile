.PHONY: all
all: build

.PHONY: build
build:
	docker build --rm -t nextcloud-news-updater .

.PHONY: lint
lint:
	docker run -it --rm -v $(shell pwd):/root/ projectatomic/dockerfile-lint dockerfile_lint
