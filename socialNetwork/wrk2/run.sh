#!/bin/bash
IP=192.168.199.161
PORT=24759
#./wrk -D exp -t 2 -c 2 -d 30s -L -s ./scripts/social-network/compose-post.lua http://${IP}:${PORT}/wrk2-api/post/compose -R 1
#./wrk -D exp -t 2 -c 2 -d 30s -L -s ./scripts/social-network/read-home-timeline.lua http://${IP}:${PORT}/wrk2-api/home-timeline/read -R 1
./wrk -D exp -t 1 -c 1 -d 20s -L -s ./scripts/social-network/read-user-timeline.lua http://${IP}:${PORT}/wrk2-api/user-timeline/read -R 1
