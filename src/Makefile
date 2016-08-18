.PHONY: build migrate test clean

build:
	truffle build

migrate: build
	truffle migrate

# testrpc should be running when running tests
test: migrate
	truffle test

clean:
	rm -rf build
