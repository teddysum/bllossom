python qlora_llama2.py \
    --model_name_or_path meta-llama/Llama-2-13b-chat-hf \
    --output_dir ./test2 \
    --logging_steps 10 \
    --save_strategy steps \
    --data_seed 42 \
    --save_steps 100 \
    --save_total_limit 40 \
    --evaluation_strategy steps \
    --eval_dataset_size 1 \
    --max_eval_samples 1000 \
    --per_device_eval_batch_size 1 \
    --max_new_tokens 256 \
    --dataloader_num_workers 4 \
    --group_by_length \
    --logging_strategy steps \
    --remove_unused_columns False \
    --do_train \
    --lora_r 64 \
    --lora_alpha 16 \
    --lora_modules all \
    --double_quant \
    --quant_type nf4 \
    --bf16 \
    --bits 4 \
    --warmup_ratio 0.03 \
    --lr_scheduler_type constant \
    --gradient_checkpointing \
    --dataset ../data/ko_lima_by_teddysum_1.0.jsonl \
    --source_max_len 2048 \
    --target_max_len 2048 \
    --per_device_train_batch_size 4 \
    --gradient_accumulation_steps 16 \
    --max_steps 500 \
    --eval_steps 1000 \
    --learning_rate 0.0002 \
    --adam_beta2 0.999 \
    --max_grad_norm 0.3 \
    --lora_dropout 0.05 \
    --weight_decay 0.0 \
    --seed 0 \
    --use_auth_token
#    --report_to wandb \
#    --push_to_hub