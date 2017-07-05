FROM ubuntu:latest

MAINTAINER Mathieu POTIER <mathieu.potier@onzeway.eu>

LABEL Description="This image provide various way to mine cryto-coins" Vendor="Onzeway" Version="1.0.0"

RUN apt-get update && apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update && apt-get -y install ethminer

VOLUME ["/root/.ethash"]

COPY ./yam/yam_generic /usr/local/bin/yam_generic
COPY ./yam/yam_haswell /usr/local/bin/yam_haswell
RUN chmod +x /usr/local/bin/yam_*
RUN ln -nfs /usr/local/bin/yam_generic /usr/local/bin/yam

COPY ./nheqminer/nheqminer /usr/local/bin/nheqminer
RUN chmod +x /usr/local/bin/nheqminer
RUN ln -nfs /usr/local/bin/nheqminer /usr/local/bin/nheqminer