#!/bin/bash

# Clone the Wan2.2 repository
git clone https://github.com/digilateraldev/Wan2.2.git
cd Wan2.2
# Activate the main virtual environment
. /venv/main/bin/activate
# Install ninja
pip install ninja

# Install required dependencies
pip install -r requirements.txt

# Install flash attention
pip install flash_attn
pip install python-multipart
# Install additional requirements for animation
pip install -r requirements_animate.txt

# Install Hugging Face CLI and login
pip install "huggingface_hub[cli]"

# Log in to Hugging Face (you will need to replace `--token` with your actual token)

# Download the necessary models
huggingface-cli download Wan-AI/Wan2.2-Animate-14B --local-dir ./Wan2.2-Animate-14B
huggingface-cli download black-forest-labs/FLUX.1-Kontext-dev --local-dir ./Wan2.2-Animate-14B/process_checkpoint/FLUX.1-Kontext-dev

echo "Setup complete!"
