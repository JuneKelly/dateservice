#! /usr/bin/env bash

timestamp=`date +%Y%m%d_%H%M%S`
image_name="dateservice_$timestamp"
container_name="ds_$timestamp"

go build .

sudo docker build -t $image_name .

sudo docker run -p 3000:3000 --name $container_name $image_name
