#!/bin/sh

set -ex

export DOCKER_USER_ID=buddyspike
docker build -t $DOCKER_USER_ID/mbt-demo-$MBT_APP_NAME . &&
docker tag $DOCKER_USER_ID/mbt-demo-$MBT_APP_NAME $DOCKER_USER_ID/mbt-demo-$MBT_APP_NAME:$MBT_APP_VERSION &&
docker login &&
docker push $DOCKER_USER_ID/mbt-demo-$MBT_APP_NAME:$MBT_APP_VERSION