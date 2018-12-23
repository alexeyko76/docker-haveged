FROM debian:stretch-slim

MAINTAINER Alexey Koshkin <alexeyko@gmail.com>

RUN apt-get update && apt-get -qq -y install haveged && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["haveged"]
CMD ["-F", "-w", "1024"]
