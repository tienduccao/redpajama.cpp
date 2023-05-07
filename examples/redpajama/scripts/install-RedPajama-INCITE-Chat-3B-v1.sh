#!/bin/bash

# cd to scripts dir
cd `dirname $0`

# download model to models dir
echo "Downloading model"
python ./convert_gptneox_to_ggml.py togethercomputer/RedPajama-INCITE-Chat-3B-v1 ../models/pythia

# remove temp cache dir
echo "Removing temp cache dir"
rm -r ../models/pythia-cache

# done!
echo "Done. Run 'chat-RedPajama-INCITE-Chat-3B-v1_f16.sh' to test model."