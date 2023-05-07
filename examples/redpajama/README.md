# gglm Support for RedPajama Model

## Ackonwledgement 

We highly appreciate the great effort from the fork of [gptneox.cpp](https://github.com/byroneverson/gptneox.cpp). Our support of the RedPajama Model is mainly based on this implementation. We extend the model configure and fixed a bug when setting use_parallel_residual flag to False in their original implementation. We also extend the open assistant chat mode for RedPajama.   

## Usage:

- Make the code:

        make redpajama


- Prepare the RedPajama model for gglm:

        bash ./examples/redpajama/scripts/install-RedPajama-INCITE-Chat-3B-v1.sh

- Run RedPajama open assistant:

        bash ./examples/redpajama/scripts/chat-RedPajama-INCITE-Chat-3B-v1-f16.sh

