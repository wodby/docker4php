-include env_make

.PHONY: test

PHP_VER ?= 7.2

default: test

test:
	cd ./test/$(PHP_VER) && ./run.sh
