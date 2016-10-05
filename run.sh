#!/bin/bash


docker run -e LOCAL_USER_ID=`id -u $USER` -e DISPLAY -v $HOME/.Xauthority:/home/user/.Xauthority -it --rm --net=host ppatrick/wine $@
