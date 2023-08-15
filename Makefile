TS_FILES := $(shell find src -name '*.ts')

run: build
	(cd build; node main.js)

build: $(TS_FILES) node_modules
	tsc --build

node_modules: package.json package-lock.json
	npm ci

clean_build:
	-rm -rf build

clean_node:
	-rm -rf node_modules

clean: clean_build clean_node
