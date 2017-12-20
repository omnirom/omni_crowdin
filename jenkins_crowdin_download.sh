#!/bin/sh

source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=/data2/android/omni-80-oneplus3/source
export OMNI_CROWDIN_BRANCH=android-8.1
export OMNI_CROWDIN_DEVICE=oneplus3

cd $OMNI_CROWDIN_BASE_PATH

. ./build/envsetup.sh
#python ./omni_crowdin/crowdin_sync.py --username maxwen --local-download
brunch $OMNI_CROWDIN_DEVICE
if [ $? -eq 0 ]; then
    python ./omni_crowdin/crowdin_sync.py --username maxwen --download
fi

