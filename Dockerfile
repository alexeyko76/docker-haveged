FROM debian:stretch

MAINTAINER Alexey Koshkin <alexeyko@gmail.com>

RUN apt-get -y --quiet install haveged

ENTRYPOINT ["haveged"]
CMD ["-F", "-w", "1024"]
