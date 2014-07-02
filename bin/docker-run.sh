#! /usr/bin/env bash

timestamp=`date +%Y%m%d_%H%M%S`
image_name="dateservice"
container_name="ds"

bash bin/build.sh

echo -e ">> Removing previous container and image"
sudo docker rm $container_name
sudo docker rmi $image_name

echo -e ">> Building image"
sudo docker build -t $image_name .
if [[ ! $? -eq 0 ]]; then
  echo -e ">> Something went wrong, exiting"
  exit 1
fi

echo -e ">> Running container"
sudo docker run -p 3000:3000 --name $container_name $image_name
