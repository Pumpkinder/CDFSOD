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
        --f_shot ${FSHOT} \
        --save_json \
        --inference_dir ${IDIR} \
        --pretrain_model_path /path/to/weights/groundingdino_swinb_cogcoor.pth \
        --options text_encoder_type=/path/to/bert-base-uncased
