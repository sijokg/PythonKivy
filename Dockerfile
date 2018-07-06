FROM ubuntu:17.10
MAINTAINER Sijo K George <cijo_k_george@yahoo.co.in>

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev software-properties-common \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN add-apt-repository ppa:kivy-team/kivy \
  && apt-get update \
  && apt-get install python3-kivy

ENTRYPOINT ["python3"]
