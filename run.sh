#!/bin/bash

git clone https://github.com/martinobdl/segnet

wget https://github.com/commaai/speedchallenge/raw/master/data/train.mp4 --output-document=./data/train.mp4
wget https://github.com/commaai/speedchallenge/raw/master/data/train.txt --output-document=./data/images/train.txt

mkdir -p data
mkdir -p data/images
mkdir -p data/images_seg

python3 preprocess.py
python3 segnet/main.py
