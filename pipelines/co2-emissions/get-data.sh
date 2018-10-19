#!/usr/bin/env bash
# [wf] execute get-data stage
set -ex

# [wf] create data folder if it doesn't exist
mkdir -p data/

# [wf] download dataset from github
curl -L \
  -o data/global.csv \
  https://github.com/datasets/co2-fossil-global/raw/master/global.csv
# [wf] add zeros to missing per capita column values
scripts/add_zeros.py data/global.csv
