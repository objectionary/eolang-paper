#!/bin/bash
# SPDX-FileCopyrightText: Copyright (c) 2016-2025 Objectionary.com
# SPDX-License-Identifier: MIT

set -e -o pipefail

TLROOT=$1
REPO=$2
PACKAGES=$3

rm -rf package
mkdir package
cd package
cp ../eolang-paper.tex .
cp ../phigure.sty .
cp ../main.bib .

for p in ${PACKAGES}; do
    cp "${TLROOT}/tex/latex/${p}/${p}.sty" .
done
cp -r ../sections .

version=$(curl --silent -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/${REPO}/releases/latest" | jq -r '.tag_name')
echo "Version is: ${version}"

sed -i "s|0\.0\.0|${version}|g" eolang-paper.tex
sed -i "s|REPOSITORY|${REPO}|g" eolang-paper.tex
pdflatex -shell-escape -halt-on-error eolang-paper.tex > /dev/null

bibtex eolang-paper
pdflatex -halt-on-error eolang-paper.tex > /dev/null
pdflatex -halt-on-error eolang-paper.tex > /dev/null
rm -rf ./*.aux ./*.bcf ./*.blg ./*.fdb_latexmk ./*.fls ./*.log ./*.run.xml ./*.out ./*.exc
zip -x eolang-paper.pdf -r "paper-${version}.zip" ./*
mv "paper-${version}.zip" ..
cd ..
