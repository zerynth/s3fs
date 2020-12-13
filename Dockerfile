FROM debian:buster-slim

COPY goofys /goofys
RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates && apt-get install -y fuse

RUN update-ca-certificates
