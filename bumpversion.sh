#!/bin/bash

VERSIONFILE="$PWD/VERSION"
if [[ ! -f  $VERSIONFILE ]]; then
	echo "$VERSIONFILE does not exist"
	echo "Creating VERSION file"
        echo "1.0" > VERSION
	echo "Current Version is: $(cat $VERSIONFILE)"
	exit 0
fi	
CURRENTVERSION=$(cat $VERSIONFILE)
echo "Bumping current version: $CURRENTVERSION"
echo "$(bc <<< "$CURRENTVERSION+0.1")" > $VERSIONFILE
echo "Bumped version to $(cat $VERSIONFILE)"



