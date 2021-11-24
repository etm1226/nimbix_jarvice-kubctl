ARG ALPINE_VERSION=3.14
FROM alpine:$ALPINE_VERSION

ARG KUBECTL_VERSION=v1.21.7
RUN cd /usr/bin && wget -O kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/${TARGETPLATFORM:-linux/amd64}/kubectl && chmod 0555 kubectl

