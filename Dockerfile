FROM python:alpine

RUN pip3 install --upgrade pip && \
    python3 -m pip install fauxmo && \
    apk add git && \
    git clone https://github.com/n8henrie/fauxmo-plugins.git

ENTRYPOINT ["fauxmo", "-v", "-c"]
CMD ["/config/fauxmo.json"]
