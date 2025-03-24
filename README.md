# Setup

We conduct our model testing using the following versions: Python 3.9.12, torch 2.5.0, and CUDA 12.1.

1. Clone this repository.

```bash
git clone https://github.com/longzw1997/Open-GroundingDino.git && cd Open-GroundingDino/
```

2. Install the required dependencies.

```bash
pip install -r requirements.txt 
cd models/GroundingDINO/ops
python setup.py build install
python test.py
cd ../../..
```

3. Download [pre-trained model] (https://github.com/IDEA-Research/GroundingDINO/releases) and [BERT](https://huggingface.co/bert-base-uncased) weights, then modify the corresponding paths in the train/test script.

- **Finetune and Inference**:

```  bash
# finetune GroundingDINO
bash train.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# finetune GroundingDINO with backbone using LoRA
bash train_lora.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# finetune GroundingDINO with backbone and bert using LoRA
bash train_blora.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# inference
bash
```


# 

