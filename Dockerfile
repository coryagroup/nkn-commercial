from alpine:latest

WORKDIR /opt

RUN wget https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip &&\
  unzip linux-amd64.zip && mv linux-amd64/nkn-commercial /usr/local/bin/ &&\
  rm -r ./*
  
ENTRYPOINT nkn-commercial
