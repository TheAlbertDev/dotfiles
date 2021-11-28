#!/bin/bash

nameFile='README'

if ! [[ -z "$1" ]]
  then
      nameFile=$1
fi

pandoc "$nameFile.md" -o "$nameFile.pdf" --from markdown+emoji --template eisvogel --toc --listings --variable titlepage-background="$(dirname $0)/background.pdf" --pdf-engine=xelatex
