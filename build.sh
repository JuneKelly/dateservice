#! /usr/bin/env bash

binary_name="dateservice"

if [[ ! -d dist ]]; then
  echo -e ">> Making directory ./dist"
  mkdir dist
fi

echo -e ">> Building binary"

go build -o dist/$binary_name .
