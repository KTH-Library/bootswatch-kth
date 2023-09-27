#! make

all: clean build dist browse

clean:
	rm -rf dist

build: v3 v4 v5

v3:
	docker build -t kthb/bootswatch-kth:v3 v3

v4:
	docker build -t kthb/bootswatch-kth:v4 v4

v5:
	docker build -t kthb/bootswatch-kth:v5 v5

dist: dist/v3 dist/v4 dist/v5

dist/v3:
	mkdir -p dist/v3
	docker create -it --name dummy kthb/bootswatch-kth:v3
	docker cp dummy:/data/bootswatch/kth dist/v3
	docker rm -f dummy

dist/v4:
	mkdir -p dist/v4
	docker create -it --name dummy kthb/bootswatch-kth:v4
	docker cp dummy:/home/node/bootswatch/dist/kth dist/v4
	docker rm -f dummy

dist/v5:
	mkdir -p dist/v5
	docker create -it --name dummy kthb/bootswatch-kth:v5
	docker cp dummy:/home/node/bootswatch/dist/kth dist/v5
	docker rm -f dummy

browse: browse-v3 browse-v4 browse-v5

browse-v3:
	firefox dist/v3/kth/index.html &

browse-v4:
	firefox dist/v4/kth/index.html &

browse-v5:
	firefox dist/v5/kth/index.html &

.PHONY: v3 v4 v5

