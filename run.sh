#!/bin/bash

cd voicevox_engine
python -m venv venv
source ./venv/bin/activate

python run.py --host 0.0.0.0 --use_gpu

