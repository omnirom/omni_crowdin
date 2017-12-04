#!/bin/sh

source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=/data2/android/omni-80-oneplus3/source
export OMNI_CROWDIN_BRANCH=android-8.0
export OMNI_CROWDIN_DEVICE=find7

cd $OMNI_CROWDIN_BASE_PATH

. ./build/envsetup.sh
python ./omni_crowdin/crowdin_sync.py --username omnibot --local-download
brunch $OMNI_CROWDIN_DEVICE
if [ $? -eq 0 ]; then
    python ./omni_crowdin/crowdin_sync.py --username omnibot --download
fi

