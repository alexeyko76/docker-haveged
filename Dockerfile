#FROM debian:stretch
FROM bitnami/minideb:stretch

MAINTAINER Alexey Koshkin <alexeyko@gmail.com>

#RUN apt-get update && apt-get -qq -y install haveged
RUN install_packages haveged

ENTRYPOINT ["haveged"]
CMD ["-F", "-w", "1024"]
