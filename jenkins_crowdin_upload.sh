#!/bin/sh
source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=`pwd`
export OMNI_CROWDIN_BRANCH=android-11

cd $OMNI_CROWDIN_BASE_PATH
#python3 ./omni_crowdin/crowdin_sync.py --username omnibot --upload-sources

# for new repos initial upload add
python3 ./omni_crowdin/crowdin_sync.py --username omnibot -c upload.yaml --upload-sources
python3 ./omni_crowdin/crowdin_sync.py --username omnibot -c upload.yaml --upload-translations
