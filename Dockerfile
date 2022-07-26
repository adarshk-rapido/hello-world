FROM golang:alpine AS builder
COPY . /src/
WORKDIR /src/
RUN go build -o hello-world

FROM alpine:latest
COPY --from=builder /src/hello-world /usr/local/bin