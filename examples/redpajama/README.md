# gglm Support for RedPajama Model

## Ackonwledgement 

We highly appreciate the great effort from the fork of [gptneox.cpp](https://github.com/byroneverson/gptneox.cpp). Our support of the RedPajama Model is mainly based on this implementation. We extend the model configure and fixed a bug when setting use_parallel_residual flag to False in their original implementation. We also extend the chat model for RedPajama.

## Usage:

- Make the code:

        make redpajama


- Prepare the RedPajama model (f16 and q4_0) for gglm:

        bash ./examples/redpajama/scripts/install-RedPajama-INCITE-Chat-3B-v1.sh

- Run RedPajama chat model (fp16):

        ./redpajama -m ./examples/redpajama/models/pythia/ggml-RedPajama-INCITE-Chat-3B-v1-f16.bin \
        -c 2048 \
        -b 128 \
        -n 1 \
        -t 8 \
        --instruct \
        --color \
        --top_k 30 \
        --top_p 0.95 \
        --temp 0.8 \
        --repeat_last_n 3 \
        --repeat_penalty 1.1 \
        --seed 0

- Run RedPajama chat model (q4_0):

        ./redpajama -m ./examples/redpajama/models/pythia/ggml-RedPajama-INCITE-Chat-3B-v1-q4_0.bin \
        -c 2048 \
        -b 128 \
        -n 1 \
        -t 8 \
        --instruct \
        --color \
        --top_k 30 \
        --top_p 0.95 \
        --temp 0.8 \
        --repeat_last_n 3 \
        --repeat_penalty 1.1 \
        --seed 0

- Run other quantize version of RedPajama Chat model (Make sure you get the f16 model prepared before you run this):

  - Make the code to quantize the model:

        make quantize-gptneox

  - Generate the quantized model, the supported types include: q4_0, q4_1, q4_2, q5_0, q5_1, and q8_0. For example, to run q4_1, you need to do the following convertion:

        python ./examples/redpajama/scripts/quantize-gptneox.py ./examples/redpajama/models/pythia/ggml-RedPajama-INCITE-Chat-3B-v1-f16.bin --quantize-output-type q4_1

  - Then you can chat with the model:

        ./redpajama -m ./examples/redpajama/models/pythia/ggml-RedPajama-INCITE-Chat-3B-v1-q4_1.bin \
        -c 2048 \
        -b 128 \
        -n 1 \
        -t 8 \
        --instruct \
        --color \
        --top_k 30 \
        --top_p 0.95 \
        --temp 0.8 \
        --repeat_last_n 3 \
        --repeat_penalty 1.1 \
        --seed 0