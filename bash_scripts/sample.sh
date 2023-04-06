#/usr/bin/bash

export MODEL_FLAGS="--image_size 32 --num_channels 128 --num_res_blocks 3 --dropout 0.1"
export DIFFUSION_FLAGS="--diffusion_steps 1000 --noise_schedule linear"
export SAMPLE_FLAGS="--num_samples 50000 --batch_size 128 --model_path log/ema_0.9999_350000.pt"
export OPENAI_LOGDIR="sample_log"
export OPENAI_LOG_FORMAT="csv"

python scripts/image_sample.py $MODEL_FLAGS $DIFFUSION_FLAGS $SAMPLE_FLAGS