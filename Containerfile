# Containerfile
# author: melon

# image base
FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

# necessary and useful tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git pkg-config bear make cmake ninja-build python3 bash curl \
    gcc-arm-none-eabi binutils-arm-none-eabi libnewlib-arm-none-eabi \
    gdb-multiarch openocd ca-certificates \
    clangd clang-format \
    ripgrep fd-find && \
    ln -sf "$(which fdfind)" /usr/local/bin/fd && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]
