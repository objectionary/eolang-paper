# SPDX-FileCopyrightText: Copyright (c) 2016-2025 Objectionary.com
# SPDX-License-Identifier: MIT

.SHELLFLAGS=-e -x -c
.ONESHELL:
.PHONY: clean zip all test
SHELL=bash

TLROOT=$$(kpsewhich -var-value TEXMFDIST)
PACKAGES=ffcode to-be-determined href-ul iexec eolang bibcop
REPO=objectionary/eo

zip: *.tex sections/*.tex
	./zip-it.sh "$(TLROOT)" "$(REPO)" "$(PACKAGES)"

clean:
	git clean -dfX
