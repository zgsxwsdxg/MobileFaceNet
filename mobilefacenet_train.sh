#!/bin/bash
# Usage:
# ./code/sphereface_train.sh GPU
#
# Example:
# ./code/sphereface_train.sh 0,1,2,3

GPU_ID=0
./../tools/caffe-sphereface/build/tools/caffe train -solver mobilefacenet/mobilefacenet_solver.prototxt -gpu ${GPU_ID} 2>&1 | tee result/sphereface_train.log