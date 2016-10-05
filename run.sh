#!/bin/bash


docker run -e LOCAL_USER_ID -e DISPLAY -v $HOME/.Xauthority:/home/user/.Xauthority -it --rm --net=host ppatrick/wine $@
