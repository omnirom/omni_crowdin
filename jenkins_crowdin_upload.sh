#!/bin/sh
source ~/crowdin_key.sh

export OMNI_CROWDIN_BASE_PATH=`pwd`
export OMNI_CROWDIN_BRANCH=android-11

if [ ! -f "./omni_crowdin/crowdin_sync.py" ]; then
    echo "Must be started in build root folder"
    exit 0
fi

if [ -z $OMNI_CROWDIN_USER ]; then
    "$OMNI_CROWDIN_USER must be set"
    exit 0
fi

# regular sync
python3 ./omni_crowdin/crowdin_sync.py --username $OMNI_CROWDIN_USER --upload-sources

# for new repos initial upload add
#python3 ./omni_crowdin/crowdin_sync.py --username $OMNI_CROWDIN_USER -c upload.yaml --upload-sources
#python3 ./omni_crowdin/crowdin_sync.py --username $OMNI_CROWDIN_USER -c upload.yaml --upload-translations

exit 1