FROM golang:1.17.0-buster

ENV GO111MODULE=on
ENV GOOS=linux
ENV GOARCH=amd64

WORKDIR /app

RUN apt update && apt install -y git curl tree vim

RUN go mod init app