# SPDX-FileCopyrightText: Copyright (c) 2016-2025 Objectionary.com
# SPDX-License-Identifier: MIT

.SHELLFLAGS=-e -x -c
.ONESHELL:
.PHONY: clean zip all test
SHELL=bash

REPO=objectionary/eo

zip: *.tex sections/*.tex
	./zip-it.sh "$(REPO)"

clean:
	git clean -dfX
