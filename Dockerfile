FROM rust:latest

ENV HUFFHOME /root/.huff/bin

WORKDIR /workspace

RUN apt update && apt install -y curl git

RUN curl -L get.huff.sh | bash

RUN $HUFFHOME/huffup

WORKDIR /code

COPY bin .

CMD "./run.sh"