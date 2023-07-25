CUDA_VISIBLE_DEVICES=1 python save_merged_model.py \
  --base "meta-llama/Llama-2-13b-chat-hf" \
  --target "bllossom-Llama-2-13b-chat-hf" \
  --lora './output/bllossom_llama-2-13b-chat_ko_0720/checkpoint-200'
