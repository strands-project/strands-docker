[![](https://images.microbadger.com/badges/image/strands/strands-base.svg)](https://microbadger.com/images/strands/strands-base "Get your own image badge on microbadger.com"  d )

# STRANDS distro docker image(s)

Do run an interactive session in the fully installed STRANDS base system, simply make sure you have [docker installed on your machine](https://docs.docker.com/engine/installation/), and then you can simply run

`docker run -it --rm strands/strands-base /bin/bash` 

to launch an interactive session. In there, most STRANDS packages are available, however, access to any local hardware (GPU) is not directly possible, there is more documentation for this at http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration

But this is enough to have a play with some STRANDS software and connect it to other ROS components as required. If you want to run this with your local user and actually have the docker container access your X server, run something like:

```
docker run -it --rm \
    --user=`id -u` \
    --env="DISPLAY" \
    --workdir="/home/$USER" \
    --volume="/home/$USER:/home/$USER" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    strands/strands-base /bin/bash
```

## Building locally
build locally via `docker build --tag ros:strands --network host`

## Automated builds on hub.docker.com

This repository is set up to release automatically a STRANDS docker image into the official docker repository at https://hub.docker.com/r/strands/strands-base/




