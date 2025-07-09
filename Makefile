.PHONY: all fetch rebase build

all: rebase cache build

fetch:
	git fetch upstream

rebase: fetch
	git rebase upstream/main

cache:
	lake exe cache get

# To build mathlib4
build: cache
	time lake build
