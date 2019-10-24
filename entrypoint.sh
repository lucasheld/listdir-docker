#!/bin/sh

INDIR="/mnt"
OUTDIR="/out"

mkdir -p "${OUTDIR}"
for FOLDER in $(ls "${INDIR}")
do
    cd "${INDIR}/${FOLDER}"
    find "." -type f > "${OUTDIR}/${FOLDER}"
done
