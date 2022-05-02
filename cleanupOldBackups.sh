#! /bin/sh

removeOldFiles.sh -e asc -d 30

lineCount=$(git status --porcelain=v1 | wc -l)
if [ $lineCount -gt 0 ]
then
    versionUpdate.sh -m 'remove old files'
else
    echo "no old files removed" 1>&2
fi

