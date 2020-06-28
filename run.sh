#!/bin/bash

git clone https://github.com/martinobdl/segnet

wget https://github.com/commaai/speedchallenge/raw/master/data/test.mp4 --output-document=./data/test.mp4
#wget https://github.com/commaai/speedchallenge/raw/master/data/train.txt --output-document=./data/images/train.txt

mkdir -p data
mkdir -p data/images_test
mkdir -p data/images_seg_test

python3 preprocess.py
python3 segnet/main.py
