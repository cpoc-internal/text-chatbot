## Quick Chatbot deployment for NVIDIA GPUS

## How To Use
   
1. Git clone or download the repository:
  ```
  git clone https://github.com/cpoc-internal/text-chatbot
   cd text-chatbot
  ```
2. Install required libraries for this AI chatbot
  ```
  chmod +x pre-install.sh
  ./quick-pre-install.sh
  ```
3. 
  - **Single Chat Model**: This script sets up an environment with one chat LLM. Meta Llama 3.1 8B Instruct has been chosen as the default chat AI model. Open WebUI provides a user-friendly GUI web interface with inferencing by vLLM.
  ```
     chmod +x chat-model-single-setup.sh
    ./chat-model-single-setup.sh
  ```

  - **Dual Chat Model**: This script sets up an environment with two chat LLMs. Meta Llama 3.1 8B Instruct and Qwen 2.5 Coder 32B Instruct have been chosen as the default chat AI models. Open WebUI provides a user-friendly GUI web interface with inferencing by vLLM.
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

  ## Download models from Hugging face

 AI models are downloaded from [Hugging Face](https://huggingface.co)

