FROM ubuntu:24.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git pkg-config bear make cmake ninja-build python3 bash curl clangd \
    gcc-arm-none-eabi binutils-arm-none-eabi libnewlib-arm-none-eabi \
    gdb-multiarch openocd ca-certificates \
    ripgrep fd-find && \
    ln -s $(which fdfind) /usr/local/bin/fd && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /workspace

WORKDIR /workspace

CMD ["/bin/bash"]
