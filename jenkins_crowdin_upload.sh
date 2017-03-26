#!/bin/sh
source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=/data2/android/omni-71-oneplus3/source
export OMNI_CROWDIN_BRANCH=android-7.1
export OMNI_CROWDIN_DEVICE=find7

cd $OMNI_CROWDIN_BASE_PATH
python ./omni_crowdin/crowdin_sync.py --username omnibot --upload-sources

