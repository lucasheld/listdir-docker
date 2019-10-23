#!/bin/sh

OUTFOLDER="/out"

mkdir -p "${OUTFOLDER}"
for FOLDER in $(echo "${FOLDERS}" | awk 'BEGIN{RS=";"} {print}')
do
    FILENAME=$(echo "${FOLDER}" | sed -e "s|/|_|g")

    # remove first _ character if we do not index the directory /
    if [ ${#FILENAME} -gt 1 ]
    then
        FILENAME=$(echo "${FILENAME:1:${#FILENAME}}")
    fi

    find "${FOLDER}" -type f > "${OUTFOLDER}/${FILENAME}"
done
