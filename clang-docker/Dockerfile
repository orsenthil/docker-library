FROM ubuntu:24.04

# Install Clang with libc++ (supports C++17 and later) from the Ubuntu archive.
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    clang \
    libc++-dev \
    libc++abi-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

# Copy the test sources
COPY tests /root

# Start from a Bash prompt
CMD ["/bin/bash"]
