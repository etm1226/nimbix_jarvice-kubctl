ARG ALPINE_VERSION=3.12
FROM alpine:$ALPINE_VERSION

ARG KUBECTL_VERSION=v1.20.5
RUN cd /usr/bin && wget -O kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/${TARGETPLATFORM:-linux/amd64}/kubectl && chmod 0555 kubectl

