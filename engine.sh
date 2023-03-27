#/bin/bash

# clone repository
git clone https://github.com/shirowanisan/voicevox_engine.git
cd voicevox_engine
git switch c-1.6.0+v-0.12.3+gpu

# language setting
asdf install python 3.8.10
asdf local python 3.8.10

# package management setting
python -m venv venv
source ./venv/bin/activate
pip install typing-extensions==4.5.0
pip install -r requirements.txt
pip install espnet resampy typeguard==2.13.3

# download speaker data
mkdir speaker_info
wget -O lilin_chan.zip https://www.dropbox.com/s/wl14g0vwr23kjk6/cb11bdbd-78fc-4f16-b528-a400bae1782d.zip?dl=1
unzip lilin_chan.zip -d speaker_info

# run
python run.py --host 0.0.0.0 --use_gpu
