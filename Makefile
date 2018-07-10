all: build test

build:
	@echo ">> Building image"
	docker build -t dockerizedphp/infection latest/

test:
	@echo ">> Run test"
	docker run --rm -ti dockerizedphp/infection --version
