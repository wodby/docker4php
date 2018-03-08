include docker.mk

.PHONY: test

PHP_VER ?= 7.1

test:
	cd ./test && PHP_VER=$(PHP_VER) ./run
