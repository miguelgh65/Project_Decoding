FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    ffmpeg \
    openjdk-11-jre \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/bubbleupnp

RUN wget https://bubblesoftapps.com/bubbleupnpserver/BubbleUPnPServer-distrib.zip \
    && unzip BubbleUPnPServer-distrib.zip -d /opt/bubbleupnp \
    && rm BubbleUPnPServer-distrib.zip

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,video,utility
ENV STREAM_URL ""

CMD ["sh", "/opt/bubbleupnp/launch.sh"]


