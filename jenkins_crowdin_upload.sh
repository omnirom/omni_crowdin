#!/bin/sh
source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=/data4/android/omni-100/source
export OMNI_CROWDIN_BRANCH=android-10
export OMNI_CROWDIN_DEVICE=omni_emulator

cd $OMNI_CROWDIN_BASE_PATH
python3 ./omni_crowdin/crowdin_sync.py --username omnibot --upload-sources

# for new repos initial upload add
#python3 ./omni_crowdin/crowdin_sync.py --username omnibot -c upload.yaml --upload-sources
#python3 ./omni_crowdin/crowdin_sync.py --username omnibot -c upload.yaml --upload-translations
