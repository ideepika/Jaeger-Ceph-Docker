FROM ubuntu:16.04
LABEL maintainer="dupadhya@redhat.com"

# general utilities
RUN apt-get update
RUN apt-get install bash vim git wget curl -y 
RUN apt-get install gcc make cmake software-properties-common \
    sudo gdb -y 

# jaeger-dependencies
RUN apt-get install libyaml-dev libgtest-dev libboost-dev json-devel -y

ADD /shared/docker/ /docker



# oh-my-zsh
ENV ZSH_DISABLE_COMPFIX true
RUN /docker/install-omz.sh

ENV CEPH_ROOT /ceph

VOLUME ["/ceph"]
VOLUME ["/shared"]

CMD ["zsh"]

