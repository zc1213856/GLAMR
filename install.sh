# install multi-object tracker
conda activate hybrik
pip install -e git+https://github.com/mkocabas/yolov3-pytorch.git#egg=yolov3
pip install -e git+https://github.com/haofanwang/multi-person-tracker.git#egg=multi-person-tracker
pip install numba filterpy
conda activate glamr

# apt
sudo apt install libgl1-mesa-glx xvfb

# mesa
sudo apt update
sudo wget https://github.com/mmatl/travis_debs/raw/master/xenial/mesa_18.3.3-0.deb
sudo dpkg -i ./mesa_18.3.3-0.deb || true
sudo apt install -f




#!/usr/bin/env bash
set -e

pip install gdown
gdown 1o4-ilb3GF7CqH0LWI6RE7fRWQ6qEyDzE
unzip spec-github-data.zip
mkdir data/dataset_folders
rm spec-github-data.zip

mkdir -p $HOME/.torch/models/
mv data/yolov3.weights $HOME/.torch/model