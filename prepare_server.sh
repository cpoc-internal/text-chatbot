apt  install docker.io -y

sudo apt-get update && sudo apt-get install -y --no-install-recommends \
   curl \
   gnupg2
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update
export NVIDIA_CONTAINER_TOOLKIT_VERSION=1.18.1-1
sudo apt-get install -y \
    nvidia-container-toolkit=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
    nvidia-container-toolkit-base=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
    libnvidia-container-tools=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
    libnvidia-container1=${NVIDIA_CONTAINER_TOOLKIT_VERSION}

sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker

sudo docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi

sudo add-apt-repository ppa:quentiumyt/nvtop
sudo apt install nvtop -y

apt install python3.10-venv -y 
python3 -m venv .venv
source .venv/bin/activate

sudo apt-get install -y python3-pip
pip3 install huggingface_hub[hf_xet]
pip3 install hf_transfer
PATH=$PATH:$HOME/.local/bin
cat << EOF >> ~/.bashrc
# Hugging Face HF-Transfer Enablement
export HF_HUB_ENABLE_HF_TRANSFER=1
EOF
source ~/.bashrc
