#!/bin/bash
# Base training of BHRL on the FSVOD-500 training split (320 base classes).
# Requires the FSVOD-500 images (setup/3_download_fsvod500.sh) and
# the training annotation copied to /root/BHRL/fsvod_train.json by setup.
cd /root/BHRL

mkdir -p work_dirs/fsvod_base

python tools/train.py \
    --config configs/vot/BHRL_fsvod500_base.py \
    --no-validate \
    --ann_file /root/BHRL/fsvod_train.json \
    --work_dir work_dirs/fsvod_base 2>&1 | tee work_dirs/fsvod_base/train.log
