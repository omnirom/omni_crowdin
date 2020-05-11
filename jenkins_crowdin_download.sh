#!/bin/sh
source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=/data4/android/omni-100/source
export OMNI_CROWDIN_BRANCH=android-10
export OMNI_CROWDIN_DEVICE=omni_emulator

cd $OMNI_CROWDIN_BASE_PATH

#. ./build/envsetup.sh
python3 ./omni_crowdin/crowdin_sync.py --username maxwen --download
#brunch $OMNI_CROWDIN_DEVICE
#if [ $? -eq 0 ]; then
#    python ./omni_crowdin/crowdin_sync.py --username maxwen --download
#fi

