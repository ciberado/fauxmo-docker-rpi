FROM python:alpine

RUN pip3 install --upgrade pip \
    python3 -m venv .venv \
    source ./.venv/bin/activate \
    python3 -m pip install fauxmo

ENTRYPOINT ["fauxmo", "-v", -"c"]
CMD ["/config/fauxmo.json"]
