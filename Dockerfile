FROM debian:stretch-slim

MAINTAINER Alexey Koshkin <alexeyko@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get -qq -y install haveged && apt-get clean

ENTRYPOINT ["haveged"]
CMD ["-F", "-w", "1024"]
