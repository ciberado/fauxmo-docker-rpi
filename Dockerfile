FROM docker.io/project31/aarch64-alpine-qemu:3.5.4
RUN [ "cross-build-start" ]

RUN apt update && \
    apt upgrade -y && \
    apt install -y python-pip3

RUN python3 -m venv .venv && \
    source ./.venv/bin/activate && \
    python3 -m pip install fauxmo
    
RUN [ "cross-build-end" ]

VOLUME /config

CMD ["fauxmo -c /config/config.json -v"]
