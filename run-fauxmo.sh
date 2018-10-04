#!/bin/bash

pip3 install --upgrade pip
python3 -m venv .venv
source ./.venv/bin/activate
python3 -m pip install fauxmo

fauxmo -c /config/config.json -v
