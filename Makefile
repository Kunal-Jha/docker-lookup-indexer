init:
	git submodule init
	git submodule update

base:
	docker build -t kunaljha/indexer_base -f Dockerfile_base .

indexerde:
	docker build -t kunaljha/indexer_de -f Dockerfile_de .

indexeres:
	docker build -t kunaljha/indexer_es -f Dockerfile_es .

run-indexerde:
	mkdir $(shell pwd)/index_de
	docker run -d --name indexerde -v $(shell pwd)/index_de:/index_dir kunaljha/indexer_de

run-indexeres:
	mkdir $(shell pwd)/index_es
	docker run -d --name indexeres -v $(shell pwd)/index_es:/index_dir kunaljha/indexer_es
