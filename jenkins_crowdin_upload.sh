#!/bin/sh
source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=/data2/android/omni-80-oneplus3/source
export OMNI_CROWDIN_BRANCH=android-8.1
export OMNI_CROWDIN_DEVICE=oneplus3

cd $OMNI_CROWDIN_BASE_PATH
python ./omni_crowdin/crowdin_sync.py --username omnibot --upload-sources

# for new repos initial upload add
#python ./omni_crowdin/crowdin_sync.py --username omnibot -c upload.yaml --upload-sources
#python ./omni_crowdin/crowdin_sync.py --username omnibot -c upload.yaml --upload-translations
