# The Best Result

| score  | d1-1s | d1-5s | d1-10s | d2-1s | d2-5s | d2-10s | d3-1s | d3-5s | d3-10s |
| :----: | :---: | :---: | :----: | :---: | :---: | :----: | :---: | :---: | :----: |
| 195.84 | 48.22 | 62.36 | 63.27  | 57.06 | 57.06 | 58.00  | 27.90 | 38.06 | 41.00  |



# Reproduce

Dataset1

- 1-shot
  - Add LoRA to the backbone of GroundingDINO for fine-tuning
  - command
    - bash train_lora.sh ${CFG=cfg_dataset1_lora_odvg.py} ${DATASETS=dataset3_1shot_od_odvg.json}

  - config setting
    - freeze_keywords=['bert'] lr_backbone=5e-05 epoch=10

- 5-shot
  - Add LoRA to the backbone and bert of GroundingDINO for fine-tuning
  - command
    - bash train_blora.sh ${CFG=cfg_dataset1_lora_odvg.py} ${DATASETS=dataset1_5shot_od_odvg.json}
  - config setting
    - freeze_keywords=None lr_backbone=2e-03 epoch=15
- 10-shot
  - Add LoRA to the backbone and bert of GroundingDINO for fine-tuning
  - command
    - bash train_blora.sh ${CFG=cfg_dataset1_lora_odvg.py} ${DATASETS=dataset1_10shot_od_odvg.json}
  - config setting
    - freeze_keywords=None lr_backbone=1e-03 epoch=10


Dataset2

- 1-shot
  - GroundingDINO zero-shot evaluation
  - command
    - bash test.sh ${CFG=cfg_dataset2_lora_odvg.py} ${DATASETS=dataset2_1shot_od_odvg.json}
- 5-shot
  - GroundingDINO zero-shot evaluation
  - command
    - bash test.sh ${CFG=cfg_dataset2_lora_odvg.py} ${DATASETS=dataset2_5shot_od_odvg.json}
- 10-shot
  - Add LoRA to the backbone and bert of GroundingDINO for fine-tuning
  - command
    - bash train_blora.sh ${CFG=cfg_dataset2_lora_odvg.py} ${DATASETS=dataset2_10shot_od_odvg.json}
  - config setting
    - freeze_keywords=None lr_backbone=1e-03 epoch=10

Dataset3

- 1-shot
  - Add LoRA to the backbone and bert of GroundingDINO for fine-tuning
  - command
    - bash train_blora.sh ${CFG=cfg_dataset3_lora_odvg.py} ${DATASETS=dataset3_1shot_od_odvg.json}
  - config setting
    - freeze_keywords=None lr_backbone=1e-04 epoch=5
- 5-shot
  - Add LoRA to the backbone and bert of GroundingDINO for fine-tuning
  - command
    - bash train_blora.sh ${CFG=cfg_dataset3_lora_odvg.py} ${DATASETS=dataset3_5shot_od_odvg.json}
  - config setting
    - freeze_keywords=None lr_backbone=1.8e-03 epoch=15
- 10-shot
  - Add LoRA to the backbone and bert of GroundingDINO for fine-tuning
  - command
    - bash train_blora.sh ${CFG=cfg_dataset3_lora_odvg.py} ${DATASETS=dataset3_10shot_od_odvg.json}
  - config setting
    - freeze_keywords=None lr_backbone=2.2e-03 epoch=10

