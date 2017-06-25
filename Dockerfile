FROM ubuntu:latest

RUN apt-get update && apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update && apt-get -y install ethminer

VOLUME ["/root/.ethash"]

COPY ./yam/yam /usr/local/bin/yam