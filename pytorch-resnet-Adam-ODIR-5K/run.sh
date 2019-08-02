#!/bin/bash

# for model in resnet18 resnet34 resnet50 resnet101 resnet152 resnext50_32x4d resnext50_32x8d wide_resnet50_2 wide_resnet101_2
for model in resnet18 resnet34 resnet50 resnet101 resnet152 resnext50_32x4d resnext101_32x8d wide_resnet50_2 wide_resnet101_2
do
	cur_dateTime="`date +%Y-%m-%d,%H:%m:%s`" 
	echo $cur_dateTime
    # echo "python3 main.py  --arch=$model --epochs=8 --cpu --save-dir=save_$model |& tee -a log_$model"
    # python3 main.py  --arch=$model --cpu --save-dir=save_$model & tee -a log_$model
    echo "python3 main.py  --arch=$model --workers=8 --epochs=100 --batch-size=128 --learning-rate=0.01 --print-freq=10 --cpu --save-dir=save_$model"
    python3 main.py  --arch=$model --workers=8 --epochs=100 --batch-size=128 --learning-rate=0.001 --print-freq=10 --cpu --save-dir=save_$model

done

# do
#     cur_dateTime="`date +%Y-%m-%d,%H:%m:%s`" 
#     echo $cur_dateTime
#     echo "python3 main.py  --arch=$model --epochs=2 --cpu --save-dir=save_$model |& tee -a log_$model"
#     # python3 main.py  --arch=$model --cpu --save-dir=save_$model & tee -a log_$model\
#     python3 main.py  --arch=$model --workers=2 --epochs=1 --batch-size=128 --learning-rate=0.05 --print-freq=10 --cpu --save-dir=save_$model |& tee log_$model

# done

# for model in vgg11 vgg11_bn vgg13 vgg13_bn vgg16 vgg16_bn vgg19 vgg19_bn
# do
# 	cur_dateTime="`date +%Y-%m-%d,%H:%m:%s`" 
# 	echo $cur_dateTime
#     echo "python3 main.py  --arch=$model --half --epochs=2 --save-dir=save_half_$model |& tee -a log_half_$model"
#     # python3 main.py  --arch=$model --half --save-dir=save_half_$model & tee -a log_half_$model
#     # python3 main.py  --arch=$model --half --epochs=5 --batch-size=300 --save-dir=save_half_$model |& tee log_half_$model
#     python3 main.py  --arch=$model --half --epochs=1 --save-dir=save_half_$model & tee log_half_$model

# done

