# ┌────────────────────────────────────────────────────────────────────┐
# │ Thumbor                                                            │
# ├────────────────────────────────────────────────────────────────────┤
# │ Copyright © 2014 Jordan Schatz                                     │
# │ Copyright © 2014 Noionλabs (http://noionlabs.com)                  │
# ├────────────────────────────────────────────────────────────────────┤
# │                                                                    │
# └────────────────────────────────────────────────────────────────────┘

# Start from docker's debian:wheezy which is currently the most
# minimal and trust worthy
# https://registry.hub.docker.com/_/debian/
FROM debian:wheezy

MAINTAINER Jordan Schatz "jordan@noionlabs.com"

# Let apt know that we will be running non-interactively.
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y python-pip build-essential python-dev curl \
    python-pycurl python-numpy python-opencv webp libpng-dev libtiff-dev \
    libjasper-dev libjpeg-dev libdc1394-22-dev libdc1394-22 libdc1394-utils

RUN pip install thumbor

CMD ["bash"]
