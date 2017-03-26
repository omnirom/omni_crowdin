#!/bin/sh
export OMNI_CROWDIN_BASE_PATH=/data2/android/omni-71-oneplus3/source
export OMNI_CROWDIN_API_KEY=faf2af76aab1190cae19f38dabbec95c
export OMNI_CROWDIN_BRANCH=android-7.1
export OMNI_CROWDIN_DEVICE=find7

cd $OMNI_CROWDIN_BASE_PATH
. ./build/envsetup.sh
python ./omni_crowdin/crowdin_sync.py --username omnibot --local-download
brunch $OMNI_CROWDIN_DEVICE
if [ $? -eq 0 ]; then
    python ./omni_crowdin/crowdin_sync.py --username omnibot --download
fi

