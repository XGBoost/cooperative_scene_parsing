#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python train.py \
    --batchSize 1 --testBatchSize 1 --threads 8 --nEpochs 10 --dataset sunrgbd \
    --branch jointnet --rate_decay 2 --fine_tune True --lr 0.0001 \
    --pre_train_model_pose suncg/models_final/posenet_suncg.pth --pre_train_model_bdb suncg/models_final/bdbnet_suncg.pth
