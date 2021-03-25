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

python3 ./omni_crowdin/crowdin_sync.py --username $OMNI_CROWDIN_USER --download

# with test build for a device before uploading
#python3 ./omni_crowdin/crowdin_sync.py --username $OMNI_CROWDIN_USER --local-download
#. ./build/envsetup.sh
#brunch <device>
#if [ $? -eq 0 ]; then
#    python3 ./omni_crowdin/crowdin_sync.py --username $OMNI_CROWDIN_USER --download
#fi

exit 1