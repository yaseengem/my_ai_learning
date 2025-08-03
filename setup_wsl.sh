#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install curl and prerequisite tools
sudo apt install -y curl software-properties-common

# Add deadsnakes PPA for latest Python versions
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt update

# Install Python 3.12 and venv module
sudo apt install -y python3.12 python3.12-venv

# Install pip using ensurepip and upgrade it
python3.12 -m ensurepip --upgrade
python3.12 -m pip install --upgrade pip

# Add local pip to PATH in current shell session
export PATH="$HOME/.local/bin:$PATH"

# Create virtual environment
python3.12 -m venv ~/.my_py3_venv

echo "✅ Setup complete."
echo "To activate your virtual environment, run:"
echo "source ~/.my_py3_venv/bin/activate"
