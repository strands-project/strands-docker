FROM ros:indigo-ros-base

COPY public.key /tmp/

RUN apt-get update
RUN apt-get install -y curl software-properties-common python-software-properties
RUN apt-key add /tmp/public.key
RUN apt-add-repository http://lcas.lincoln.ac.uk/repos/release
RUN apt-get update && apt-get install -y ros-indigo-strands-desktop ros-indigo-strands-robot ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials ros-indigo-uol-cmp3641m \
    && rm -rf /var/lib/apt/lists/

