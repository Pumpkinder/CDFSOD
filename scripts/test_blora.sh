GPU_NUM=$1
CFG=$2
DATASETS=$3
OUTPUT_DIR=$4
IDIR=$5
FSHOT=$6



CUDA_VISIBLE_DEVICES=${GPU_NUM} python main.py \
        --output_dir ${OUTPUT_DIR} \
        --eval \
        -c ${CFG} \
        --datasets ${DATASETS}  \
        --save_json \
        --backbone_use_lora \
        --bert_use_lora \
        --inference_dir ${IDIR} \
        --f_shot ${FSHOT} \
        --pretrain_model_path /path/to/checkpoint.pth \
        --options text_encoder_type=/path/to/bert-base-uncased
