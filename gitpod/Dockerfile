FROM --platform=linux/amd64 ghcr.io/gbraad-devenv/alpine/base:3.18

USER root

RUN addgroup -g 33333 gitpod \
    && echo '%gitpod ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/gitpod \
    && adduser -u 33333 -G gitpod -h /home/gitpod -s /bin/bash -D gitpod \
    && mkdir /workspace && chown -hR gitpod:gitpod /workspace

# gitpod/vscode requirements
RUN apk add \
    iptables \
    gcompat \
    libstdc++ \
    libgcc

RUN apk add \
    docker

USER gitpod
