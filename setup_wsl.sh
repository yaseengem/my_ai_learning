# 1. Update system packages
sudo apt update && sudo apt upgrade -y

# 2. Install prerequisite tools
sudo apt install -y software-properties-common curl

# 3. Add deadsnakes PPA for newer Python versions
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

# 4. Install Python 3.12
sudo apt install -y python3.12

# 5. (Manual) Install pip for Python 3.12 (distutils not available via apt)
curl -O https://bootstrap.pypa.io/get-pip.py
python3.12 get-pip.py

# 6. Create alias for easy access
echo "alias py3='python3.12'" >> ~/.bashrc
echo "alias pip='py3 -m pip'" >> ~/.bashrc
source ~/.bashrc

# 7. Create a virtual environment (recommended for development)
# Run this inside your project directory
py3 -m venv .venv
source .venv/bin/activate

# 8. Upgrade pip and install packages
pip install --upgrade pip
