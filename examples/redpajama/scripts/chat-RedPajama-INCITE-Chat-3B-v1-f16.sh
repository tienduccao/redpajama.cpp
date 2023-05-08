#!/bin/bash

#
# Temporary script - will be removed in the future
#

cd `dirname $0`
cd ../../..

./redpajama -m ./examples/redpajama/models/pythia/ggml-RedPajama-INCITE-Chat-3B-v1-f16.bin \
        -c 2048 \
        -b 128 \
        -n 1 \
        -t 8 \
        --instruct \
        --color \
        --top_k 50 \
        --repeat_last_n 3 \
        --repeat_penalty 1.1 \
        --seed 0
        --temp 0.7
