#!/bin/bash

for model in resnet18 resnet34 resnet50 resnet101 resnet152
do
	cur_dateTime="`date +%Y-%m-%d,%H:%m:%s`" 
	echo $cur_dateTime
    # echo "python3 main.py  --arch=$model --epochs=8 --cpu --save-dir=save_$model |& tee -a log_$model"
    # python3 main.py  --arch=$model --cpu --save-dir=save_$model & tee -a log_$model
    echo "python3 main.py  --arch=$model --workers=8 --epochs=100 --batch-size=128 --learning-rate=0.01 --print-freq=10 --cpu --save-dir=save_$model"
    python3 main.py  --arch=$model --workers=8 --epochs=100 --batch-size=128 --learning-rate=0.001 --print-freq=10 --cpu --save-dir=save_$model

done
