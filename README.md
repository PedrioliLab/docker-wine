# docker-wine
A basic wine container with support for X11 forwarding and matching of user between host - image.

To start the container with a user id matching the current host user:

    docker run -e LOCAL_USER_ID=`id -u $USER` -e DISPLAY -v $HOME/.Xauthority:/home/user/.Xauthority -it --rm --net=host ppatrick/wine /bin/bash

For convenience this can also be achieved via:

    run.sh /bin/bash

Please note that wine has not been initialized in the image. You can do so with:

    wineboot --init
