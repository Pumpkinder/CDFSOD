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

# Training

- **Finetune and Inference**:

```  bash
# finetune GroundingDINO
bash scripts/train.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# finetune GroundingDINO with backbone using LoRA
bash scripts/train_lora.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# finetune GroundingDINO with backbone and bert using LoRA
bash scripts/train_blora.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# inference use GroundingDINO
bash scripts/test.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# inference use GroundingDINO with backbone_lora
bash scripts/test_lora.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}

# inference use GroundingDINO with backbone and bert lora
bash scripts/test_blora.sh ${GPU_NUM} ${CFG} ${DATASETS} ${OUTPUT_DIR} ${FSHOT} ${IDIR}
```

# Reproduce

- You can reproduce the results with reproduce.md

- results
    - scripts/*.json

- use checkpoints
    - You can also downloads the trained checkpoints and directly test to reproduce the results [checkpoints]()


# Acknowledgements
Provided codes were adapted from:

- [microsoft/GLIP](https://github.com/microsoft/GLIP)
- [IDEA-Research/DINO](https://github.com/IDEA-Research/DINO/)
- [IDEA-Research/GroundingDINO](https://github.com/IDEA-Research/GroundingDINO)
- [longzw1997/Open-GroundingDino](https://github.com/longzw1997/Open-GroundingDino.git)


 


