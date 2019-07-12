all: frontend

.PHONY: frontend
frontend:
	docker run -it --rm -v ~/MySources/ambar/FrontEnd:/mnt joshfinnie/nvm /mnt/compile.sh
	cd FrontEnd; docker build -t erikluo/ambar-frontend:v0.1 -f  Dockerfile .

.PHONY: webapi
webapi:
	cd WebApi; docker build -t erikluo/ambar-webapi:v0.1 -f  Dockerfile .

.PHONY: pipeline
pipeline:
	cd Pipeline; docker build -t erikluo/ambar-pipeline:v0.1 -f  Dockerfile .

.PHONY: serviceapi
serviceapi:
	cd ServiceApi; docker build -t erikluo/ambar-serviceapi:v0.1 -f  Dockerfile .

.PHONY: localcrawler
localcrawler:
	cd LocalCrawler; docker build -t erikluo/ambar-localcrawler:v0.1 -f  Dockerfile .

.PHONY: es
es:
	cd ElasticSearch; docker build -t erikluo/ambar-es:v0.1 -f  Dockerfile .

.PHONY: db
db:
	cd MongoDB; docker build -t erikluo/ambar-db:v0.1 -f  Dockerfile .

.PHONY: redis
redis:
	cd Redis; docker build -t erikluo/ambar-redis:v0.1 -f  Dockerfile .

.PHONY: rabbit
rabbit:
	cd Rabbit; docker build -t erikluo/ambar-rabbit:v0.1 -f  Dockerfile .
