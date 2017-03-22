#!/bin/sh
echo "--------------------"
echo "--- Copy folder ----"
echo "--------------------"

if [ ! -d ~/vol/robot/ ]; then
    mkdir -p ~/vol/robot/ 
fi

rm -rf ~/vol/robot/* && cp -r ./sample_vol/* ~/vol/robot/

echo "----------------------"
echo "--- Add authority ----"
echo "----------------------"

xhost + local:docker

echo "----------------------"
echo "--- Create network ---"
echo "----------------------"

docker network create -d bridge robot

echo "--------------------------"
echo "--- Run docker target ----"
echo "--------------------------"

docker run -d --rm \
           --net robot \
           -p 8000:80 \
           -v ~/vol/robot/robot_target:/opt/web \
           --name robot-framework-target \
           playniuniu/robot-framework-target

sleep 2

echo "-------------------------"
echo "--- Run docker robot ----"
echo "-------------------------"

docker run --rm -t \
           --net robot \
           -e DISPLAY=unix$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v ~/vol/robot/robot_testcases:/testcases \
           --name robot-framework \
           playniuniu/robot-framework

sleep 3

echo "------------------"
echo "--- Tear down ----"
echo "------------------"

docker stop robot-framework-target && docker network rm robot

echo "----------------------"
echo "--- Test complete ----"
echo "----------------------"
