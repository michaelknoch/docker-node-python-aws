FROM node

MAINTAINER Michael Knoch

RUN \
    apt-get update && \
    apt-get install -y python python-dev python-pip python-virtualenv && \
    rm -rf /var/lib/apt/lists/* && \
    pip install awscli --upgrade --user && \
    ln -s /root/.local/bin/aws /usr/bin/aws
