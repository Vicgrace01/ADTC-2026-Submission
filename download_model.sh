#!/bin/bash
mkdir -p model
if [ ! -f model/model.gguf ]; then
    echo "Downloading ARIS Gold 1.5B model (76% accuracy, 83.18 score)..."
    wget -O model/model.gguf https://huggingface.co/Vicgrace/ARIS-Gold-1.5B/resolve/main/qwen2.5-1.5b-instruct.Q4_K_M.gguf
    echo "Download complete."
else
    echo "Model already exists. Skipping download."
fi
