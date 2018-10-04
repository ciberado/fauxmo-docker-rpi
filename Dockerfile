FROM resin/armv7hf-debian
RUN [ "cross-build-start" ]

RUN apt update -q && \
    apt upgrade -y -q && \
    apt install -y python3-pip

RUN python3 -m venv .venv
RUN source ./.venv/bin/activate
RUN python3 -m pip install fauxmo
    
RUN [ "cross-build-end" ]

VOLUME /config

CMD ["fauxmo -c /config/config.json -v"]
