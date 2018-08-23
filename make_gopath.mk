# usage:
# 1. put make_gopath.mk to your project top directory	
# 2. add `include make_gopath.mk` to your project Makefile
# 3. make sure target `gopath` to be called

.PHONY: gopath

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))

OS = $(shell uname)
GOENV_HOME = $(HOME)/.goenv
PROJ_DIR = $(dir $(mkfile_path))
PROJ_NAME = $(shell basename $(PROJ_DIR))
GOPATH =

ifeq ($(OS),Linux)
pathmd5 = $(shell echo $(PROJ_NAME) | md5sum | awk '{print $1}')
endif
ifeq ($(OS),Darwin)
pathmd5 = $(shell echo $(PROJ_NAME) | md5)
endif
ifeq ($(pathmd5),)
$(error GOPATH not generate on $(OS))
endif

GOPATH = ${GOENV_HOME}/$(shell echo $(pathmd5) | cut -c1-16)

$(GOPATH): | $(GOPATH)/workdir
	mkdir -p $(GOPATH) $(GOPATH)/bin $(GOPATH)/src $(GOPATH)/pkg
	echo $(PROJ_DIR) > $(GOPATH)/workdir
	ln -s $(PROJ_DIR) $(GOPATH)/src/$(PROJ_NAME)

gopath: $(GOPATH)


export GOPATH