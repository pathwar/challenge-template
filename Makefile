.PHONY: build
build:
	docker build -t pathwar/challenge-example .

.PHONY: publish
publish:
	docker push pathwar/challenge-example

.PHONY: run-with-pathwar
run-with-pathwar: build
	pathwar compose run

.PHONY: run-with-docker
run-with-docker: build
	docker run --name=pathwar-challenge-example -it --rm -p 8899:80 pathwar/challenge-example
