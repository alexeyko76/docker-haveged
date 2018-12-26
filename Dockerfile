FROM debian:stretch-slim

MAINTAINER Alexey Koshkin <alexeyko@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive apt-get update && export DEBIAN_FRONTEND=noninteractive apt-get -qq -y install haveged && export DEBIAN_FRONTEND=noninteractive apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["haveged"]
CMD ["-F", "-w", "1024"]
