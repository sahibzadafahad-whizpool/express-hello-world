#!/bin/bash

function countContainers() {
        docker ps -q $1 | wc -l
}

function countCrashedContainers() {
        docker ps -a | grep -v -F 'Exited (0)' | grep -c -F 'Exited ('
}

TYPE=${1-all}

case $TYPE in
        running) COUNT_FUNCTION="countContainers"; shift;;
        crashed) COUNT_FUNCTION="countCrashedContainers"; shift;;
        all) COUNT_FUNCTION="countContainers -a"; shift;;
esac

$COUNT_FUNCTION

if [ "$COUNT_FUNCTION"  >  0 ]; then
  docker kill $(docker ps -q)
  docker rm $(docker ps -a -q)
  docker rmi -f $(docker images -a -q)
  echo "container deleted"
fi
