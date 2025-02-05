#!/bin/bash

git submodule update --init --recursive


source $(conda info --base)/etc/profile.d/conda.sh

conda create -y -n adop python=3.9.7
conda activate adop

conda install -y cudnn=8.2.1.32 cudatoolkit-dev=11.2 cudatoolkit=11.2 -c nvidia -c conda-forge
conda install -y astunparse numpy ninja pyyaml mkl mkl-include setuptools cmake=3.19.6 cffi typing_extensions future six requests dataclasses
conda install -y magma-cuda110 -c pytorch
