image_name=bazel

docker-build:
	docker build -t $(image_name) .
.PHONY: docker-build

docker-bash:
	docker run \
	  -v ${PWD}:/src/workspace \
	  -v ${PWD}/tmp/build_output:/tmp/build_output \
	  -w /src/workspace \
	  -it \
	  --entrypoint=/bin/bash \
	  $(image_name)
.PHONY: docker-bash
