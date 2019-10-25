#!/bin/sh

INDIR="/mnt"
OUTDIR="/out"

mkdir -p "${OUTDIR}"
for FOLDER in $(ls "${INDIR}")
do
    cd "${INDIR}/${FOLDER}"
    OUTFILE="${OUTDIR}/${FOLDER}"
    find "." -type f > "${OUTFILE}"
    chown ${UID}:${GID} "${OUTFILE}"
done
