#!/bin/bash

nameFile='README'

if ! [[ -z "$1" ]]
  then
      nameFile=$1
fi

pandoc "$nameFile.md" -o "$nameFile.pdf" --from markdown --template eisvogel --toc --listings
