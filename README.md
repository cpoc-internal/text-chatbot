## Quick Chatbot deployment for NVIDIA GPUS

## Download models from Hugging face

All of the AI models are downloaded from [Hugging Face](https://huggingface.co) and can be easily changed/updated to different models by editing the scripts.

## AI Frontend Menu Interfaces and Backend Inference Engines Deployed
- [Open WebUI](https://github.com/open-webui/open-webui) via Docker Container
- [Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge) via Docker Container
- [vLLM](https://github.com/vllm-project/vllm) via Docker Container
- [SGLang](https://github.com/sgl-project/sglang) via Docker Container



## How To Use
   
1. Git clone or download the repository:
  ```
  git clone https://github.com/cpoc-internal/text-chatbot
   cd text-chatbot
  ```

2. Choose and run a pre-setup script to install all of the software packages and drivers needed to run the AI models. You have two options:

  - **Quick Pre-Setup**: This will install only the software packages and drivers needed to quickly begin deploying the AI models. None of the default AI models or Docker containers will be downloaded initially. Depending on your Internet connection speed, the downloads may take about 10-15 mins. The AI models and Docker containers will be downloaded later as each type of AI model is deployed via the corresponding script. **`WARNING:`** A server reboot is performed at the end of the script, so please save any work before starting.
  ```
  chmod +x quick-pre-setup.sh
  ./quick-pre-setup.sh
  ```
3. Choose and run a model setup deployment script. There are several options based on what type of model you want to run:
  - **Single Chat Model Setup**: This script sets up an environment with one chat LLM. Meta Llama 3.1 8B Instruct has been chosen as the default chat AI model. Open WebUI provides a user-friendly GUI web interface with inferencing by vLLM.
  ```
     chmod +x chat-model-single-setup.sh
    ./chat-model-single-setup.sh
  ```

  - **Dual Chat Model Setup**: This script sets up an environment with two chat LLMs. Meta Llama 3.1 8B Instruct and Qwen 2.5 Coder 32B Instruct have been chosen as the default chat AI models. Open WebUI provides a user-friendly GUI web interface with inferencing by vLLM.
  ```
    chmod +x chat-model-dual-setup.sh
  ./chat-model-dual-setup.sh
  ```

 - **3 vllms Chat Model Setup**: This script sets up an environment with two chat LLMs. Meta Llama 3.1, 8B, Google gemma 2, 9B and IBM Granite 3.1, 2B have been chosen as the default chat AI models. Open WebUI provides a user-friendly GUI web interface with inferencing by vLLM.
  ```
    chmod +x chat-model-3-setup.sh
  ./chat-model-3-setup.sh
  ```

   - **Add 1 more vllm Chat Model Setup**: This script sets up an environment with two chat LLMs. Meta Llama 3.1 8B Instruct and Qwen 2.5 Coder 32B Instruct have been chosen as the default chat AI models. Open WebUI provides a user-friendly GUI web interface with inferencing by vLLM.
  ```
    chmod +x chat-model-3-model.sh
  ./chat-model-3-model.sh
  ```

  

