include docker.mk

.PHONY: test

PHP_VER ?= 7.2

test:
	cd ./test && PHP_VER=$(PHP_VER) ./run.sg
