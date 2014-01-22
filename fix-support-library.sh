#!/bin/bash

# we must use the same support lib jar in all the dependencies
good_jar="app/libs/android-support-v4.jar"

# all these libs depend on android-support-v4.jar
readarray <<END
external/HoloEverywhere/contrib/ActionBarSherlock/actionbarsherlock
external/CacheWord/cachewordlib
END

for project in "${MAPFILE[@]}"; do
    project=${project%$'\n'} # remove trailing newline
    echo "updating $good_jar in $project"
    cp -f $good_jar $project/libs
done

rm external/bho/TbChat/libs/guava-r09.jar
rm external/CacheWord/cachewordlib/libs/guava-r09.jar
cp SecureReaderLibrary/libs/guava-11.0.2.jar external/bho/TbChat/libs/
cp SecureReaderLibrary/libs/guava-11.0.2.jar external/CacheWord/cachewordlib/libs/
