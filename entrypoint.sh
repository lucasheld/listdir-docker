#!/bin/sh

INDIR="/mnt"
OUTDIR="/out"

mkdir -p "${OUTDIR}"
for FOLDER in $(ls "${INDIR}")
do
    find "${INDIR}/${FOLDER}" -type f > "${OUTDIR}/${FOLDER}"
done
