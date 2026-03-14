FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    ca-certificates \
    libatomic1 \
    libc6 \
    libgcc-s1 \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN chmod +x ./linuxBuild.x86_64

ENTRYPOINT ["./linuxBuild.x86_64", "-batchmode", "-nographics"]