FROM ubuntu:latest

MAINTAINER Mathieu POTIER <mathieu.potier@onzeway.eu>

LABEL Description="This image provide various way to mine cryto-coins" Vendor="Onzeway" Version="1.0.0"

RUN apt-get update && apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update && apt-get -y install ethminer

VOLUME ["/root/.ethash"]

COPY ./yam/yam /usr/local/bin/yam
RUN chmod +x /usr/local/bin/yam