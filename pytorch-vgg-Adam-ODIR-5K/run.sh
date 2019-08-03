#!/bin/bash

for model in vgg11 vgg11_bn vgg13 vgg13_bn vgg16 vgg16_bn vgg19 vgg19_bn
do
    cur_dateTime="`date +%Y-%m-%d,%H:%m:%s`" 
    echo $cur_dateTime
    echo "python3 main.py  --arch=$model --epochs=2 --cpu --save-dir=save_$model |& tee -a log_$model"
    # python3 main.py  --arch=$model --cpu --save-dir=save_$model & tee -a log_$model\
    # python3 main.py  --arch=$model --workers=8 --epochs=100 --batch-size=128 --learning-rate=0.001 --print-freq=10 --cpu --save-dir=save_$model
    python3 main.py  --arch=$model --workers=4 --epochs=1 --batch-size=128 --learning-rate=0.001 --print-freq=10 --cpu --save-dir=save_$model

done
