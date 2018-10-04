FROM resin/armv7hf-debian

RUN [ "cross-build-start" ]

RUN apt update -q && \
    apt upgrade -y -q && \
    apt install -y python3-pip python3-venv

RUN [ "cross-build-end" ]

COPY run-fauxmo.sh run-fauxmo.sh
VOLUME /config

CMD ["run-fauxmo.sh"]
