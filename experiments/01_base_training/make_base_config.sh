#!/bin/bash
# Derives the FSVOD-500 base-training config from the standard BHRL config:
# 9 epochs from scratch (ImageNet backbone init), SGD lr 0.02 with step decay.
cd /root/BHRL

cp configs/vot/BHRL.py configs/vot/BHRL_fsvod500_base.py

sed -i "s/runner = dict(type='EpochBasedRunner', max_epochs=209)/runner = dict(type='EpochBasedRunner', max_epochs=9)/" configs/vot/BHRL_fsvod500_base.py
sed -i "s/checkpoint_config = dict(interval=109)/checkpoint_config = dict(interval=1)/" configs/vot/BHRL_fsvod500_base.py
sed -i "s/step=\[6\]/step=[7]/" configs/vot/BHRL_fsvod500_base.py
sed -i "s#resume_from = '/root/BHRL/checkpoints/model_split3.pth'#resume_from = None#" configs/vot/BHRL_fsvod500_base.py
sed -i "s/samples_per_gpu=1,/samples_per_gpu=16,/" configs/vot/BHRL_fsvod500_base.py

echo "Config written to configs/vot/BHRL_fsvod500_base.py"
echo "Reduce samples_per_gpu in the config if the GPU runs out of memory"
