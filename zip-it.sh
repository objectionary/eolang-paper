#!/bin/bash
# SPDX-FileCopyrightText: Copyright (c) 2016-2025 Objectionary.com
# SPDX-License-Identifier: MIT

set -ex -o pipefail

TLROOT=$1
REPO=$2
PACKAGES=$3

rm -rf package
mkdir package
cd package
cp ../paper.tex .
cp ../phigure.sty .
mkdir bibliography
cp ../bibliography/main.bib bibliography/main.bib

for p in ${PACKAGES}; do
    cp "${TLROOT}/tex/latex/${p}/${p}.sty" .
done
cp -r ../sections .

version=$(curl --silent -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/${REPO}/releases/latest" | jq -r '.tag_name')
echo "Version is: ${version}"

sed -i "s|0\.0\.0|${version}|g" paper.tex
sed -i "s|REPOSITORY|${REPO}|g" paper.tex
pdflatex -shell-escape -halt-on-error paper.tex > /dev/null

bibtex paper
pdflatex -halt-on-error paper.tex > /dev/null
pdflatex -halt-on-error paper.tex > /dev/null
rm -rf ./*.aux ./*.bcf ./*.blg ./*.fdb_latexmk ./*.fls ./*.log ./*.run.xml ./*.out ./*.exc
zip -x paper.pdf -r "paper-${version}.zip" ./*
mv "paper-${version}.zip" ..
cd ..
