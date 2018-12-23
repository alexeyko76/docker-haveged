FROM debian:stretch

MAINTAINER Alexey Koshkin <alexeyko@gmail.com>

RUN apt-get update && apt-get -qq -y install haveged

ENTRYPOINT ["haveged"]
CMD ["-F", "-w", "1024"]
