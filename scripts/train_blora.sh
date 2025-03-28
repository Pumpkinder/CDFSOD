GPU_NUM=$1
CFG=$2
DATASETS=$3
OUTPUT_DIR=$4
FSHOT=$5
IDIR=$6

# Change ``pretrain_model_path`` to use a different pretrain. 
# (e.g. GroundingDINO pretrain, DINO pretrain, Swin Transformer pretrain.)
# If you don't want to use any pretrained model, just ignore this parameter.

CUDA_VISIBLE_DEVICES=${GPU_NUM} python main.py \
        --output_dir ${OUTPUT_DIR} \
        -c ${CFG} \
        --datasets ${DATASETS}  \
        --save_json \
        --backbone_use_lora \
        --bert_use_lora \
        --f_shot ${FSHOT} \
        --inference_dir ${IDIR} \
        --pretrain_model_path /path/to/weights/groundingdino_swinb_lora.pth \
        --options text_encoder_type=./bert-base-uncased
